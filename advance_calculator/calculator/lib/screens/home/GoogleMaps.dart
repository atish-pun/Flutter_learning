import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Fetch_online/controllers/covid_infected_controllers.dart';
import 'Fetch_online/model/covid_infected_model.dart';

class GoogleMapScreen extends StatelessWidget {
  GoogleMapScreen({Key? key, this.covidInfect}) : super(key: key);
  final CovidInfect? covidInfect;
  final CovidInfectedControl covidInfectedControl =
      Get.put(CovidInfectedControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          brightness: Brightness.dark,
          title: Text(
            covidInfect!.country.toString(),
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
        ),
        body: Container(
          child: GoogleMap(
            compassEnabled: true,
            mapType: MapType.satellite,
            initialCameraPosition: covidInfectedControl.kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              covidInfectedControl.controller.complete(controller);
            },
          ),
        ));
  }
}
