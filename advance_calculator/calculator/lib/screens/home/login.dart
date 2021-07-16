import 'package:calculator/screens/home/sign_up.dart';
import 'package:calculator/widgets/customebutton.dart';
import 'package:calculator/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'Fetch_online/controllers/googleSign_controller.dart';
import 'list_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController emailTxt = TextEditingController();
  final TextEditingController passwordTxt = TextEditingController();
  final GoogleSignController googleSignController =
      Get.put(GoogleSignController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.grey[50],
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Text(
                  "Let's sign you in",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: "serif",
                      color: Colors.blue[800]),
                ),
                SizedBox(
                  height: 4,
                ),
                Text("Welcome back",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: "serif",
                        color: Colors.blue[800])),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Image(
                  image: AssetImage("assets/images/login.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Login to your account",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "serif",
                                color: Colors.blue[800])),
                        SizedBox(
                          height: 15,
                        ),
                        customTextForm(
                            label: "Email address",
                            hint: "Enter your email",
                            preIcon: Icons.email,
                            txtType: TextInputType.emailAddress,
                            obscureText: false,
                            editTxtControl: emailTxt),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Password",
                            hint: "Enter your password",
                            preIcon: Icons.lock,
                            txtType: TextInputType.text,
                            obscureText: true,
                            editTxtControl: passwordTxt),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        customButton(
                            label: "Log in",
                            colors: Colors.blue[800],
                            borderOutline: BorderSide(
                                width: 0.0, color: Colors.blue.shade800),
                            txtStyle: TextStyle(
                                fontFamily: "serif",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            onpress: () {
                              if (emailTxt.text == "Atish" &&
                                  passwordTxt.text == "atish") {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListWork()),
                                    (route) => false);
                              } else {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Ok"))
                                    ],
                                    title: Text("Incorrect Details"),
                                    content: Text(
                                        "Please enter the correct email or password"),
                                  ),
                                );
                              }
                            }),
                        Text(
                          "Or",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        customButton(
                          label: "Sign up",
                          colors: Colors.grey[50],
                          borderOutline:
                              BorderSide(width: 0.0, color: Colors.white),
                          txtStyle: TextStyle(
                              fontFamily: "serif",
                              fontSize: 15,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold),
                          onpress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.3,
                                color: Colors.blue[500],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Or",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.3,
                                color: Colors.blue[500],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: Get.width * 0.57,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              googleSignController.login();
                            },
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.blue[800],
                              size: 16,
                            ),
                            label: Text(
                              "Sign in with google",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontSize: 13.5,
                                color: Colors.blue[800],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ),
                        Container(
                          width: Get.width * 0.57,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              googleSignController.logout();
                            },
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.blue[800],
                              size: 16,
                            ),
                            label: Text(
                              "Log out",
                              style: TextStyle(
                                letterSpacing: 0.4,
                                fontSize: 13.5,
                                color: Colors.blue[800],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
