import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customButton({
  String label = ".",
  Color? colors,
  BorderSide? borderOutline,
  TextStyle? txtStyle,
  Function()? onpress,
}) {
  return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: colors,
          side: borderOutline,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          padding: EdgeInsets.symmetric(horizontal: 98)),
      onPressed: onpress,
      child: Text(label, style: txtStyle));
}
