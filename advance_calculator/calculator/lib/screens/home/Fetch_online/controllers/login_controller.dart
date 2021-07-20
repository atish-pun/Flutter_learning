import 'package:calculator/screens/NavigationBar/BottomNav.dart';
import 'package:calculator/screens/home/Fetch_online/model/login_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var loginModel = LoginModel().obs;

  void login({String? email, String? password}) async {
    try {
      await ServicesApi.loginModel(email: email, password: password)
          .then((response) {
        if (response == null) {
          Fluttertoast.showToast(msg: "Unable to login");
        } else {
          loginModel.value = response;
          Get.offAll(BottomNavBar());
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
