import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialogs {
  //loading dialog
  void loadingDialog() {
    Get.defaultDialog(
      title: "Loading",
      content: Container(
        child: Column(
          children: [
            CircularProgressIndicator(),
            Text("Please wait..."),
          ],
        ),
      ),
    );
  }

//cancel dialog
  void cancelDialog() {
    Get.back();
  }

//error dialog
  void errorDialog() {
    Get.defaultDialog(
      title: "Error",
      content: Text("Something went wrong"),
      textCancel: "Cancel",
      cancelTextColor: Colors.white,
      onCancel: () => cancelDialog,
      textConfirm: "Ok",
      confirmTextColor: Colors.white,
      onConfirm: () => cancelDialog,
    );
  }
}
