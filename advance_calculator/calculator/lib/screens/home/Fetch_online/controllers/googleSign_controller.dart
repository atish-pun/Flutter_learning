import 'package:calculator/screens/NavigationBar/BottomNav.dart';
import 'package:calculator/screens/home/Fetch_online/helpers/secureStorage.dart';
import 'package:calculator/screens/home/Fetch_online/model/weather_model.dart';
import 'package:calculator/screens/home/cv_screen.dart';
import 'package:calculator/screens/home/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../weatherDetails.dart';

class GoogleSignController extends GetxController {
  var isLogin = false.obs;

  late GoogleSignIn googleSignIn;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    googleSignIn = GoogleSignIn();
    ever(isLogin, handelLogin);
    isLogin.value = firebaseAuth.currentUser != null;
    firebaseAuth.authStateChanges().listen((event) {
      isLogin(event != null);
    });

    super.onInit();
  }

  void handelLogin(isLogin) async {
    if (isLogin) {
      Get.offAll(() => WeatherDetails());
    } else {
      Get.offAll(() => HomeScreen());
    }
  }

  void login() async {
    Get.defaultDialog(
      radius: 10,
      title: "Please wait a moment...",
      titleStyle: TextStyle(fontSize: 16),
      content: Center(
        child: Container(
          height: 26,
          width: 26,
          child: CircularProgressIndicator(
            strokeWidth: 2.4,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ),
    );
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignIn == null) {
      Get.back();
    } else {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      await firebaseAuth.signInWithCredential(oAuthCredential);
      // SecureStorage().setToken('uid', firebaseAuth.currentUser!.uid);
      // SecureStorage().getToken('uid').then((value) => value);

      Get.back();
    }
  }

  void logout() async {
    await googleSignIn.disconnect();
    await firebaseAuth.signOut();
    // SecureStorage().removeToken('uid');
  }
}
