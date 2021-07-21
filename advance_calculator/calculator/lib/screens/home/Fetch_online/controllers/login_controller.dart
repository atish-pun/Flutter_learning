import 'package:calculator/screens/NavigationBar/BottomNav.dart';
import 'package:calculator/screens/home/Fetch_online/helpers/secureStorage.dart';
import 'package:calculator/screens/home/Fetch_online/model/login_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:calculator/screens/home/login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var loginModel = LoginModel().obs;

  void login({String? email, String? password}) async {
    try {
      await ServicesApi.loginModel(email: email, password: password)
          .then((response) {
        if (response!.status == 200) {
          loginModel.value = response;
          Fluttertoast.showToast(msg: "Successfully you are logged in");
          Get.offAll(BottomNavBar());
        } else {
          Fluttertoast.showToast(msg: "Wrong email or password");
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void logout() async {
    loginModel.close();
    Get.off(HomeScreen());
  }
}
