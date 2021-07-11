import 'package:calculator/screens/home/Fetch_online/model/weather_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  var weathers = Weather().obs;

  getWeatherData({var city}) {
    try {
      ServicesApi.getWeather(city: city).then((response) {
        if (response != null) {
          weathers.value = response;
        } else {
          Fluttertoast.showToast(
              msg: "Weather details of $city is not available");
          weathers.value = Weather();
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
