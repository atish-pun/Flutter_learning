import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/covid_myths_controller.dart';
import 'covid_myths_details.dart';

class CovidMyths extends StatelessWidget {
  CovidMyths({Key? key}) : super(key: key);
  final CovidMythsController covidMythsController =
      Get.put(CovidMythsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Covid Myths",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        child: GetBuilder<CovidMythsController>(builder: (controller) {
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
              : ListView.builder(
                  itemCount: controller.covidMythsData!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.007,
                        right: MediaQuery.of(context).size.width * 0.05,
                        left: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Card(
                        elevation: 3,
                        color: Colors.blue[50],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CovidMythsDetails(
                                          convidMythsData:
                                              controller.covidMythsData![index],
                                        )));
                          },
                          dense: true,
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: 2),
                          leading: Hero(
                            tag:
                                controller.covidMythsData![index].id.toString(),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage(
                                  "${controller.covidMythsData![index].imageUrl != null ? controller.covidMythsData![index].imageUrl : "https://static.thenounproject.com/png/340719-200.png"}"),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          title: Text(
                            "${controller.covidMythsData![index].mythNp ?? "..."}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            "${controller.covidMythsData![index].realityNp ?? "..."}",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                          trailing: Text(
                            "${controller.covidMythsData![index].sourceName ?? "..."}",
                            style: TextStyle(
                                color: Colors.blue[120],
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    );
                  },
                );
        }),
      ),
    );
  }
}
