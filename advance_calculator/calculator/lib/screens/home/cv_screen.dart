import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({Key? key}) : super(key: key);
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
      floatingActionButton: Container(
        width: 44,
        child: FloatingActionButton(
          backgroundColor: Colors.blue[800],
          onPressed: () {
            _makePhoneCall("tel:9815155630");
          },
          child: Icon(
            Icons.call,
            size: 16,
          ),
        ),
      ),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            color: Colors.blue[50],
            padding: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 59.0,
                    backgroundImage: AssetImage('assets/images/Atish.jpg'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Mr. Atish pun",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.merriweather().fontFamily,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                    ),
                    Text("Pokhara, Nepal",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: GoogleFonts.merriweather().fontFamily,
                        ))
                  ]),
                  SizedBox(height: 11.0),
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: 300.0,
                          child: Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 13,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Container(
                                          width: 50,
                                          height: 2.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "I loves programming with the aim of becoming an expert full-stack mobile app developer and have the basic knowledge of Php, database, java, Html etc..",
                                    style: TextStyle(
                                        fontSize: 13,
                                        height: 1.3,
                                        fontFamily: GoogleFonts.merriweather()
                                            .fontFamily,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Education".toUpperCase(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        fontFamily: GoogleFonts.merriweather()
                                            .fontFamily,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\u{2022} Diamond secondary school \n   (District Level Examination )",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.lato().fontFamily),
                                      ),
                                      Text("2070 BS",
                                          style: TextStyle(
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "\u{2022} Diamond secondary school (SLC)",
                                          style: TextStyle(
                                              fontFamily: GoogleFonts.lato()
                                                  .fontFamily)),
                                      Text("2072 BS",
                                          style: TextStyle(
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "\u{2022} Diamond secondary school (+2 science)",
                                          style: TextStyle(
                                              fontFamily: GoogleFonts.lato()
                                                  .fontFamily)),
                                      Text("2075 BS",
                                          style: TextStyle(
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\u{2022} Informatics college (BIT)",
                                          style: TextStyle(
                                              fontFamily: GoogleFonts.lato()
                                                  .fontFamily)),
                                      Text("2078 BS",
                                          style: TextStyle(
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black26,
                        ),
                        Container(
                          width: 300.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Skills".toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      fontFamily:
                                          GoogleFonts.merriweather().fontFamily,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} Java",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.7,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} Php",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 33.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.6,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} Python",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 16.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.4,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} Html,css",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.7,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} C#",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 38.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\u{2022} Graphics \n    Design",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 6.0,
                                    ),
                                    Expanded(
                                        child: LinearProgressIndicator(
                                      value: 0.8,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.grey,
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          width: 300.0,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://t4d.or.ke/wp-content/uploads/2019/12/Training-Course-in-Java-Programming-Masterclass-t4d.jpg"),
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundImage: NetworkImage(
                                      "https://miro.medium.com/max/4096/1*Y1hq9sHXG26Fyhys81z8rg.png"),
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundImage: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/800px-Python.svg.png"),
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundImage: NetworkImage(
                                      "https://res.cloudinary.com/practicaldev/image/fetch/s--xqFnqdyi--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/k5dp029baand3ni510db.jpg"),
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundImage: NetworkImage(
                                      "https://www.avenga.com/wp-content/uploads/2020/11/C-Sharp-1536x864.png"),
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(
                                      "https://www.subtraction.com/wp-content/uploads/2018/05/2018-05-14-adobe-xd-logo.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black26,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Get in touch!".toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily:
                                        GoogleFonts.merriweather().fontFamily,
                                  ),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                visualDensity:
                                    VisualDensity(horizontal: 0, vertical: -4),
                                horizontalTitleGap: -10,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 0.0),
                                leading: Icon(
                                  Icons.email,
                                  size: 19,
                                ),
                                title: Text(
                                  "punatish16@gmail.com",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          GoogleFonts.lato().fontFamily),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      await _launchInBrowser(
                                          "https://www.facebook.com/profile.php?id=100008422924488");
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await _launchInBrowser(
                                          "https://github.com/atish-jpg");
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.github,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await _launchInBrowser(
                                          "https://www.facebook.com/profile.php?id=100008422924488");
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.instagram,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
