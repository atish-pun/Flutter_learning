import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'controllers/covid_infected_controllers.dart';
import 'covid_infected_details.dart';
import 'covid_myths.dart';

class CovidInfected extends StatelessWidget {
  CovidInfected({Key? key}) : super(key: key);
  final CovidInfectedControl covidInfectedControl =
      Get.put(CovidInfectedControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  IconButton(
                    tooltip: "Covid myths",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CovidMyths()));
                    },
                    icon: Icon(
                      FontAwesomeIcons.newspaper,
                      size: 17,
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 8.5,
                    child: Text(
                      "Myths",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Covid Cases",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: GetBuilder<CovidInfectedControl>(
          builder: (controller) {
            return controller.isLoading
                ? Center(
                    child: Container(
                      height: 26,
                      width: 26,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.4,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                  )
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio:
                            MediaQuery.of(context).size.aspectRatio * 1.6,
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0),
                    itemCount: controller.covidInfect!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CovidInfectedDetails(
                                covidInfect: controller.covidInfect![index],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.01,
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      top: 15),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    child: Hero(
                                      tag: controller.covidInfect![index].id
                                          .toString(),
                                      child: Image.network(
                                        "${controller.covidInfect![index].countryInfo != null ? controller.covidInfect![index].countryInfo!.flag != null ? controller.covidInfect![index].countryInfo!.flag : "https://static.thenounproject.com/png/340719-200.png" : "https://www.freeiconspng.com/uploads/earth-day-png-14.png"}",
                                        fit: BoxFit.contain,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${controller.covidInfect![index].country}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.039,
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(6),
                                      border:
                                          Border.all(style: BorderStyle.none)),
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: "Total cases : ",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                                text:
                                                    "${controller.covidInfect![index].totalCases}",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 10))
                                          ]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.039,
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  decoration: BoxDecoration(
                                      color: Colors.red[50],
                                      borderRadius: BorderRadius.circular(6),
                                      border:
                                          Border.all(style: BorderStyle.none)),
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: "Total deaths : ",
                                          style: TextStyle(
                                              color: Colors.red[600],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                                text:
                                                    "${controller.covidInfect![index].totalDeaths}",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 10))
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
          },
        ),
      ),
    );
  }
}
