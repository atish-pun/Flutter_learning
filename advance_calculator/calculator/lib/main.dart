import 'package:calculator/screens/NavigationBar/BottomNav.dart';
import 'package:calculator/screens/home/Fetch_online/controllers/push_notification_controller.dart';
import 'package:calculator/screens/home/login.dart';
import 'package:calculator/screens/home/push_notification_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: "assets/.env");
  PushNotificationController().intialize();
  runApp(MyApp());
}

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
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        primaryColorDark: Colors.blue[800],
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => BottomNavBar()),
        GetPage(name: "/Login", page: () => HomeScreen()),
      ],
      // initialRoute: "/home_screen",
      // routes: <String, WidgetBuilder>{
      //   "/": (context) => BottomNavBar(),
      //   "/home_screen": (context) => HomeScreen()
      // },
    );
  }
}
