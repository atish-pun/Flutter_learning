import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'covid_infected_controllers.dart';

class GoogleMapControl extends GetxController {
  Completer<GoogleMapController> controller = Completer();
  final CovidInfectedControl covidInfectedControl =
      Get.put(CovidInfectedControl());

  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
}
