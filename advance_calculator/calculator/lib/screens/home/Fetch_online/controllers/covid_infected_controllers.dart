import 'dart:async';

import 'package:calculator/screens/home/Fetch_online/model/covid_infected_model.dart';
import 'package:calculator/screens/home/Fetch_online/services/services_api.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CovidInfectedControl extends GetxController {
  List<CovidInfect>? covidInfect = <CovidInfect>[];
  List<CovidInfect>? searchList = <CovidInfect>[];
  Completer<GoogleMapController> controller = Completer();
  // var country = "".obs;
  bool isLoading = true;

  @override
  void onInit() {
    getCovidInfectedData();
    //For allocationg time to search function while searching any thing
    // debounce(country, (query) {
    //   getSearch(query);
    // }, time: Duration(seconds: 5));
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

  void getSearch(var query) {
    searchList = covidInfect!.where(
      (countryName) {
        final nameLower = countryName.country!.toLowerCase();
        final searchLower = query.toLowerCase();
        return nameLower.contains(searchLower);
      },
    ).toList();
    update();
  }

  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(
        CovidInfect().countryInfo!.lat!, CovidInfect().countryInfo!.long!),
    zoom: 14.4746,
  );

  final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
}
