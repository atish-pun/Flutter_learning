import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class PushNotificationController extends GetxController {
  @override
  void onInit() {
    intialize().obs;
    super.onInit();
  }

  Future<void> intialize() async {
    await OneSignal.shared.setAppId("${dotenv.env['PUSH_NOTIFICATION']}");
  }
}
