import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Favorite",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 210,
                width: 210,
                image: AssetImage("assets/images/favourite_icon.png"),
              ),
              SizedBox(
                height: 12,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "To keep the track of any products you want,",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                    children: [
                      TextSpan(
                        text: "\njust tap the favorite icon",
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
