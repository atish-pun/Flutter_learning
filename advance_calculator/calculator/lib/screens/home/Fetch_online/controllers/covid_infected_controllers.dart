import 'package:calculator/screens/home/Fetch_online/model/covid_infected_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:get/get.dart';

class CovidInfectedControl extends GetxController {
  List<CovidInfect>? covidInfect = <CovidInfect>[];
  bool isLoading = true;

  @override
  void onInit() {
    getCovidInfectedData();
    super.onInit();
  }

  void getCovidInfectedData() {
    try {
      ServicesApi.getInfectData().then((value) {
        if (value != null) {
          covidInfect = value;
          isLoading = false;
          update();
        } else {
          isLoading = true;
          covidInfect = null;
          update();
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
