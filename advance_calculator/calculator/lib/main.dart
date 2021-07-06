import 'package:calculator/screens/NavigationBar/BottomNav.dart';
import 'package:calculator/screens/home/list_view.dart';
import 'package:calculator/screens/home/login.dart';
import 'package:calculator/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Calculator();
  }
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue.shade800,
    ));
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue[800], primaryColorDark: Colors.blue[800]),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (context) => BottomNavBar(),
        "/home_screen": (context) => HomeScreen()
      },
    );
  }
}
