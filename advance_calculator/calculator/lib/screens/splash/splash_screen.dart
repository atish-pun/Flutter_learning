import 'dart:async';
import 'package:calculator/screens/home/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.blue.shade800,
        statusBarIconBrightness: Brightness.light));

    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue.shade800, Colors.blue.shade700],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          FlutterLogo(size: 70),
          SizedBox(
            height: 10,
          ),
          Text("Flutter Tour",
              style: TextStyle(
                  color: Colors.blue[200],
                  fontSize: 19,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.w600,
                  fontFamily: "serif")),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 95,
            child: LinearProgressIndicator(
              minHeight: 2.3,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.43,
          ),
          Text("Powered by google",
              style: TextStyle(
                  color: Colors.blue[100],
                  fontSize: 14,
                  fontFamily: GoogleFonts.notoSans().fontFamily)),
        ],
      ),
    )));
  }
}
