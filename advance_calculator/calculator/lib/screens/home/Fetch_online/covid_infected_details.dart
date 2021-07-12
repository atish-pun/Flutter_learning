import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'model/covid_infected_model.dart';

class CovidInfectedDetails extends StatelessWidget {
  const CovidInfectedDetails({Key? key, this.covidInfect}) : super(key: key);
  final CovidInfect? covidInfect;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.blue[50],
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 21, right: 21),
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: Hero(
                    tag: covidInfect!.id.toString(),
                    child: Image.network(
                      "${covidInfect!.countryInfo != null ? covidInfect!.countryInfo!.flag != null ? covidInfect!.countryInfo!.flag : "https://static.thenounproject.com/png/340719-200.png" : "https://www.freeiconspng.com/uploads/earth-day-png-14.png"}",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Colors.white),
                child: Container(
                  padding: EdgeInsets.only(top: 9, left: 19, right: 19),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Covid case details ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.7),
                            ),
                            Text(
                              "${covidInfect!.continent != null ? covidInfect!.continent.toString().substring(10) : "..."}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  letterSpacing: 0.4),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "${covidInfect!.country ?? " "}",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.4,
                                      fontSize: 10),
                                  children: [
                                    TextSpan(
                                      text: " \u{2022} ",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    TextSpan(
                                      text:
                                          "${covidInfect!.countryCode ?? " "}",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                    "Lat \u{2023} Long : ${covidInfect!.countryInfo != null ? covidInfect!.countryInfo!.lat : "..."},",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.4,
                                    fontSize: 10),
                                children: [
                                  TextSpan(
                                    text:
                                        " ${covidInfect!.countryInfo != null ? covidInfect!.countryInfo!.long : "..."}",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Total cases",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600],
                                        letterSpacing: 0.3,
                                        fontSize: 15.6),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    "${covidInfect!.totalCases}",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Total deaths",
                                    style: TextStyle(
                                        color: Colors.red[600],
                                        letterSpacing: 0.3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.6),
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    "${covidInfect!.totalDeaths}",
                                    style: TextStyle(
                                      color: Colors.red[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Total recovered",
                                    style: TextStyle(
                                        letterSpacing: 0.3,
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.6),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    "${covidInfect!.totalRecovered}",
                                    style: TextStyle(
                                      color: Colors.green[900],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue[50],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "New Cases",
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              letterSpacing: 0.3),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "${covidInfect!.newCases}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.blue[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 80,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red[50],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "New Deaths",
                                          style: TextStyle(
                                              color: Colors.red[600],
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.3),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "${covidInfect!.newDeaths}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green[50],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Active Cases",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green[900],
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.3),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "${covidInfect!.activeCases}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 80,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Critical Cases",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.3),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "${covidInfect!.criticalCases}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Total tests : ${covidInfect!.tests}",
                              style: TextStyle(
                                  fontSize: 15.5,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.wrench,
                              size: 11,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${DateFormat('yy MMM dd, h:mm a').format(covidInfect!.updated)}",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
