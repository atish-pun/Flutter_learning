import 'package:calculator/screens/home/Fetch_online/model/covid_infected_model.dart';
import 'package:calculator/screens/home/Fetch_online/model/covid_myths_model.dart';
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
}
