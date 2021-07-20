import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'controllers/weather_controller.dart';

class WeatherDetails extends StatelessWidget {
  WeatherDetails({Key? key}) : super(key: key);
  final WeatherController weatherController = Get.put(WeatherController());
  final cityText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime dt = DateTime.now();
    String dateFormat = DateFormat('EEEE, dd MMM yyyy').format(dt);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          brightness: Brightness.dark,
          title: Text(
            "Weather",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(right: 19, left: 19),
          child: Stack(
            children: [
              Container(
                child: Obx(
                  () => weatherController.weathers.value.isBlank == true
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
                      : Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 14),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.643,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.048,
                                      child: TextFormField(
                                        controller: cityText,
                                        style: TextStyle(
                                            color: Colors.blue[700],
                                            fontSize: 15),
                                        keyboardType: TextInputType.text,
                                        cursorColor: Colors.blue,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                            contentPadding:
                                                EdgeInsets.only(top: 0.0),
                                            isDense: true,
                                            prefixIcon: Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.blue,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: Colors.blue.shade700,
                                                    width: 0.6)),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.blue.shade800,
                                                  width: 0.6),
                                            ),
                                            hintText: "Search city name"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.047,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: ElevatedButton(
                                        style: TextButton.styleFrom(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (cityText.text.trim() != "") {
                                            weatherController.getWeatherData(
                                                city: cityText.text);
                                          } else {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Please enter the city name");
                                          }
                                        },
                                        child: Icon(
                                          Icons.search,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.home,
                                        size: 22,
                                        color: Colors.blue[800],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "${weatherController.weathers.value.name ?? "City name "}",
                                        style: TextStyle(
                                            fontSize: 22,
                                            letterSpacing: 0.3,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[800]),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text:
                                            "Lat \u{2023} Long : ${weatherController.weathers.value.coord != null ? weatherController.weathers.value.coord!.lat!.toStringAsFixed(2) + "° N" : "..."},",
                                        style: TextStyle(
                                            color: Colors.blue[600],
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.4,
                                            fontSize: 9),
                                        children: [
                                          TextSpan(
                                            text:
                                                " ${weatherController.weathers.value.coord != null ? weatherController.weathers.value.coord!.lon!.toStringAsFixed(2) + "° E" : "..."}",
                                            style: TextStyle(fontSize: 9),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  dateFormat,
                                  style: TextStyle(
                                      color: Colors.blue[600],
                                      letterSpacing: 0.4,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                child: Image(
                                  image:
                                      AssetImage("assets/images/weather.png"),
                                ),
                              )),
                              Row(
                                children: [
                                  weatherController.weathers.value.main?.temp !=
                                          null
                                      ? Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            (weatherController.weathers.value
                                                            .main!.temp! -
                                                        273)
                                                    .toStringAsFixed(0) +
                                                "\u{2103}",
                                            style: TextStyle(
                                                color: Colors.blue[800],
                                                fontSize: 60),
                                          ),
                                        )
                                      : Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "0\u{2103}",
                                            style: TextStyle(
                                                color: Colors.blue[800],
                                                fontSize: 60),
                                          ),
                                        ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  weatherController
                                              .weathers.value.main?.tempMax !=
                                          null
                                      ? Text(
                                          "max - " +
                                              (weatherController.weathers.value
                                                          .main!.tempMax! -
                                                      273)
                                                  .toStringAsFixed(0) +
                                              "\u{2103}",
                                          style: TextStyle(
                                            color: Colors.blue[800],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        )
                                      : Text(" "),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  weatherController
                                              .weathers.value.main?.tempMin !=
                                          null
                                      ? Text(
                                          "min - " +
                                              (weatherController.weathers.value
                                                          .main!.tempMin! -
                                                      273)
                                                  .toStringAsFixed(0) +
                                              "\u{2103}",
                                          style: TextStyle(
                                            color: Colors.blue[800],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        )
                                      : Text(" "),
                                ],
                              ),
                              Row(
                                children: [
                                  weatherController.weathers.value.weather?[0]
                                              .main ==
                                          "Clouds"
                                      ? Icon(
                                          Icons.cloud,
                                          color: Colors.blue,
                                          size: 22,
                                        )
                                      : weatherController.weathers.value
                                                  .weather?[0].main ==
                                              "Rain"
                                          ? Icon(
                                              FontAwesomeIcons.cloudRain,
                                              color: Colors.blue,
                                              size: 22,
                                            )
                                          : weatherController.weathers.value
                                                      .weather?[0].main ==
                                                  "Clear"
                                              ? Icon(
                                                  FontAwesomeIcons.cloudSun,
                                                  color: Colors.blue,
                                                  size: 22,
                                                )
                                              : Icon(
                                                  FontAwesomeIcons.cloudSunRain,
                                                  color: Colors.blue,
                                                  size: 22,
                                                ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${weatherController.weathers.value.weather?[0].description ?? " "}",
                                    style: TextStyle(
                                        color: Colors.blue[700],
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.4),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 25,
                                thickness: 0.9,
                                color: Colors.blue[200],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Humidity",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "${weatherController.weathers.value.main?.humidity ?? 0} ",
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "%",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Pressure",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "${weatherController.weathers.value.main?.pressure ?? 0} ",
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "hPa",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Wind",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "${weatherController.weathers.value.wind?.speed ?? 0} ",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800]),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Km/h",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 13),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
