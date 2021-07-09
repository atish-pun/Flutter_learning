import 'package:calculator/screens/home/Fetch_online/model/covid_myths_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:get/get.dart';

class CovidMythsController extends GetxController {
  List<CovidMythsData>? covidMythsData = <CovidMythsData>[];
  bool isLoading = true;

  @override
  void onInit() {
    getCovidMythsData();
    super.onInit();
  }

  void getCovidMythsData() {
    try {
      ServicesApi.getCovidMyths().then((value) {
        if (value != null) {
          covidMythsData = value.data;
          isLoading = false;
          update();
        } else {
          isLoading = true;
          covidMythsData = null;
          update();
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
