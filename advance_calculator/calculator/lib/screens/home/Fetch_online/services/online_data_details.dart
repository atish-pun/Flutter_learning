import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OnlineDataDetails extends StatelessWidget {
  const OnlineDataDetails({Key? key, this.data}) : super(key: key);
  final Map<String, dynamic>? data;

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    String dateTimeFormat = DateFormat('MMM dd,hh:mm a').format(dateTime);

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
          padding: EdgeInsets.only(left: 4, right: 4, top: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 4),
                child: ListTile(
                  dense: true,
                  horizontalTitleGap: 3,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                  leading: CircleAvatar(
                    radius: 16,
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
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 15,
              //       backgroundColor: Colors.blue[700],
              //       child: Text(
              //         data!['name'].substring(0, 1).toUpperCase(),
              //         style: TextStyle(
              //             color: Colors.grey[300],
              //             fontWeight: FontWeight.bold,
              //             fontSize: 12),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 11,
              //     ),
              //     Text(
              //       data!['name'].substring(0, 9),
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.4),
              //     ),
              //     SizedBox(
              //       width: 6,
              //     ),
              //     Text(
              //       dateTimeFormat.toString(),
              //       style: TextStyle(fontSize: 11.6),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Align(
              //       alignment: Alignment.topLeft,
              //       child: RichText(
              //         text: TextSpan(
              //           text: "From : ",
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 10),
              //           children: [
              //             TextSpan(
              //               text: data!['email'],
              //               style: TextStyle(
              //                   fontWeight: FontWeight.normal, fontSize: 10),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
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
                              fontSize: 10),
                          children: [
                            TextSpan(
                              text: data!['email'],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
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
                              fontSize: 10),
                          children: [
                            TextSpan(
                              text: "punatish16@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Message",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        data!['body'],
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.justify,
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
