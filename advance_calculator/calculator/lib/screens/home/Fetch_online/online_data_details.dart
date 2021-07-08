import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OnlineDataDetails extends StatelessWidget {
  const OnlineDataDetails({Key? key, this.data}) : super(key: key);
  final Map<String, dynamic>? data;

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    String dateTimeFormat = DateFormat('MMM dd, h:mm a').format(dateTime);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          data!['name'].substring(0, 9),
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.only(left: 4, right: 4, top: 11),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 4),
                child: ListTile(
                  dense: true,
                  horizontalTitleGap: 5,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                  leading: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.blue[700],
                    child: Text(
                      data!['name'].substring(0, 1).toUpperCase(),
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: data!['name'].substring(0, 9) + "  ",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: dateTimeFormat.toString(),
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "To me",
                    style: TextStyle(fontSize: 12, color: Colors.grey[900]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 23, right: 23),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "From : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.5),
                          children: [
                            TextSpan(
                              text: data!['email'],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.3),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "To : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.5),
                          children: [
                            TextSpan(
                              text: "punatish16@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.3),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Message",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.5),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          data!['body'],
                          style: TextStyle(fontSize: 12.3),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
