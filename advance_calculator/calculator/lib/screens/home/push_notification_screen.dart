import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Fetch_online/controllers/push_notification_controller.dart';

class PushNotification extends StatelessWidget {
  PushNotification({Key? key}) : super(key: key);
  final PushNotificationController pushNotificationController =
      Get.put(PushNotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Hello push"),
        // child: Text(),
      ),
    );
  }
}
