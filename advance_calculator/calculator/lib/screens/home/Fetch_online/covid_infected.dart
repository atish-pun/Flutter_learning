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
  final TextEditingController searchCountry = TextEditingController();

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
                : Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextFormField(
                          onChanged: (searchCountry) {
                            // controller.country.value = searchCountry;
                            controller.getSearch(searchCountry);
                          },
                          controller: searchCountry,
                          style:
                              TextStyle(color: Colors.blue[700], fontSize: 15),
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              contentPadding: EdgeInsets.only(top: 0.0),
                              isDense: true,
                              suffixIcon: searchCountry.text.isNotEmpty
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.clear,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        searchCountry.clear();
                                        controller.searchList!.clear();
                                        controller.update();
                                      },
                                    )
                                  : Text(""),
                              prefixIcon: Icon(
                                Icons.location_on,
                                size: 15,
                                color: Colors.blue,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade700, width: 0.6)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    color: Colors.blue.shade800, width: 0.6),
                              ),
                              hintText: "Search country..."),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: MediaQuery.of(context)
                                            .size
                                            .aspectRatio *
                                        1.6,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 5.0,
                                    mainAxisSpacing: 5.0),
                            itemCount: controller.searchList!.isNotEmpty
                                ? controller.searchList!.length
                                : controller.covidInfect!.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          controller.searchList!.isNotEmpty
                                              ? CovidInfectedDetails(
                                                  covidInfect: controller
                                                      .searchList![index],
                                                )
                                              : CovidInfectedDetails(
                                                  covidInfect: controller
                                                      .covidInfect![index],
                                                ),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 5.0,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01,
                                              top: 15),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child: Hero(
                                              tag: controller
                                                  .covidInfect![index].id
                                                  .toString(),
                                              child: Image.network(
                                                "${controller.searchList!.isNotEmpty ? controller.searchList![index].countryInfo != null ? controller.searchList![index].countryInfo!.flag != null ? controller.searchList![index].countryInfo!.flag : "https://static.thenounproject.com/png/340719-200.png" : "https://www.freeiconspng.com/uploads/earth-day-png-14.png" : controller.covidInfect![index].countryInfo != null ? controller.covidInfect![index].countryInfo!.flag != null ? controller.covidInfect![index].countryInfo!.flag : "https://static.thenounproject.com/png/340719-200.png" : "https://www.freeiconspng.com/uploads/earth-day-png-14.png"}",
                                                fit: BoxFit.contain,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${controller.searchList!.isNotEmpty ? controller.searchList![index].country : controller.covidInfect![index].country}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.039,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.37,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  style: BorderStyle.none)),
                                          child: Center(
                                            child: RichText(
                                              textAlign: TextAlign.center,
                                              text: TextSpan(
                                                  text: "Total cases : ",
                                                  style: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                            "${controller.searchList!.isNotEmpty ? controller.searchList![index].totalCases : controller.covidInfect![index].totalCases}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 10))
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.039,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.37,
                                          decoration: BoxDecoration(
                                              color: Colors.red[50],
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  style: BorderStyle.none)),
                                          child: Center(
                                            child: RichText(
                                              textAlign: TextAlign.center,
                                              text: TextSpan(
                                                  text: "Total deaths : ",
                                                  style: TextStyle(
                                                      color: Colors.red[600],
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                            "${controller.searchList!.isNotEmpty ? controller.searchList![index].totalDeaths : controller.covidInfect![index].totalDeaths}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
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
                            }),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
