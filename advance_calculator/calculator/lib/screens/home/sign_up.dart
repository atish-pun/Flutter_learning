import 'package:calculator/widgets/customebutton.dart';
import 'package:calculator/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                  "Get Registered and",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: "serif",
                      color: Colors.blue[800]),
                ),
                SizedBox(
                  height: 4,
                ),
                Text("Enjoy App",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: "serif",
                        color: Colors.blue[800])),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Image(
                  image: AssetImage("assets/images/signup.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Register your account",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "serif",
                                color: Colors.blue[800])),
                        SizedBox(
                          height: 15,
                        ),
                        customTextForm(
                            label: "Full name",
                            hint: "Enter your full name",
                            preIcon: Icons.person,
                            txtType: TextInputType.name,
                            obscureText: false),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Email address",
                            hint: "Enter your email",
                            preIcon: Icons.email,
                            txtType: TextInputType.emailAddress,
                            obscureText: false),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Phone number",
                            hint: "Enter your phone number",
                            preIcon: Icons.phone,
                            txtType: TextInputType.phone,
                            obscureText: false),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Address",
                            hint: "Enter your address",
                            preIcon: Icons.home,
                            txtType: TextInputType.text,
                            obscureText: false),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Password",
                            hint: "Enter your password",
                            preIcon: Icons.lock,
                            txtType: TextInputType.text,
                            obscureText: true),
                        SizedBox(
                          height: 14,
                        ),
                        customTextForm(
                            label: "Confirm password",
                            hint: "Re-enter your password",
                            preIcon: Icons.lock,
                            txtType: TextInputType.text,
                            obscureText: true),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "By sigining up you agree to the",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.2,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  " Terms & Conditions",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        customButton(
                            label: "Sign up",
                            colors: Colors.blue[800],
                            borderOutline: BorderSide(
                                width: 0.0, color: Colors.blue.shade800),
                            txtStyle: TextStyle(
                                fontFamily: "serif",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            onpress: () {}),
                        Text(
                          "Or",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        customButton(
                          label: "Log in",
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
                                    builder: (context) => HomeScreen()));
                          },
                        ),
                        SizedBox(
                          height: 12,
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
