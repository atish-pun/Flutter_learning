import 'package:flutter/material.dart';

class CovidMyths extends StatelessWidget {
  const CovidMyths({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Covid Myths",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
    );
  }
}
