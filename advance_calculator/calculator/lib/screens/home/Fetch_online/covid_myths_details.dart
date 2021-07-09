import 'package:calculator/screens/home/Fetch_online/model/covid_myths_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidMythsDetails extends StatelessWidget {
  const CovidMythsDetails({Key? key, this.convidMythsData}) : super(key: key);
  final CovidMythsData? convidMythsData;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          convidMythsData!.mythNp.toString().substring(0, 10),
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        color: Colors.blue[50],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.33,
                  width: MediaQuery.of(context).size.width * 0.97,
                  padding: EdgeInsets.only(top: 15, left: 21, right: 21),
                  child: Hero(
                    tag: convidMythsData!.id.toString(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "${convidMythsData!.imageUrl != null ? convidMythsData!.imageUrl : "https://static.thenounproject.com/png/340719-200.png"}",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Container(
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
                              Row(
                                children: [
                                  Icon(
                                    Icons.language,
                                    size: 11,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${convidMythsData!.lang.toString().substring(5)}",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.clock,
                                    size: 11,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${convidMythsData!.createdAt!.year}-" +
                                        "${convidMythsData!.createdAt!.month}-" +
                                        "${convidMythsData!.createdAt!.day}, " +
                                        "${convidMythsData!.createdAt!.hour}:" +
                                        "${convidMythsData!.createdAt!.minute}",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${convidMythsData!.sourceName}",
                              style: TextStyle(
                                  fontSize: 12.5, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "भ्रम",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.red[800],
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              convidMythsData!.mythNp.toString(),
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.red[800],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "यथार्थ",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              convidMythsData!.realityNp.toString(),
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green[800],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 3,
                              child: Container(
                                height: 26,
                                width: 80,
                                child: Center(
                                  child: Text(
                                    "View more...",
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: 11.3,
                                        letterSpacing: 0.3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () async {
                              await _launchInBrowser(
                                  convidMythsData!.sourceUrl.toString());
                            },
                          ),
                          SizedBox(
                            height: 14,
                          ),
                        ],
                      ),
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
