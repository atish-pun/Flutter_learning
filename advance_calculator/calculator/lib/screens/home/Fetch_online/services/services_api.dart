import 'package:calculator/screens/home/Fetch_online/model/covid_infected_model.dart';
import 'package:calculator/screens/home/Fetch_online/model/covid_myths_model.dart';
import 'package:calculator/screens/home/Fetch_online/model/weather_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ServicesApi {
  //Covid cases api
  static Future<List<CovidInfect>?> getInfectData() async {
    try {
      var url = "https://corona.askbhunte.com/api/v1/data/world";
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return covidInfectFromJson(response.body);
      } else {
        print("Sorry unable to load the data");
        return <CovidInfect>[];
      }
    } catch (e) {
      print(e.toString());
    }
  }

  //Covid myths api
  static Future<CovidMyths?> getCovidMyths() async {
    try {
      var url = "https://corona.askbhunte.com/api/v1/myths";
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return covidMythsFromJson(response.body);
      } else {
        return CovidMyths();
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<Weather?> getWeather({var city}) async {
    try {
      var key = dotenv.env['API_KEY'];
      var url =
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key";
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return weatherFromJson(response.body);
      } else {
        Fluttertoast.showToast(msg: "Please enter the correct city name");
        return Weather();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
