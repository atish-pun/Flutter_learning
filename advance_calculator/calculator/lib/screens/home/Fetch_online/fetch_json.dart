import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpMethod;

import 'online_data_details.dart';

class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  bool isLoading = true;
  var responseData;
  void initState() {
    fetchMailData();
    super.initState();
  }

  Future fetchMailData() async {
    try {
      var url = "https://jsonplaceholder.typicode.com/comments";
      var response = await httpMethod.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          responseData = jsonDecode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = true;
          responseData = "Unable to load the data";
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Mail",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.02,
        ),
        child: isLoading
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
                itemCount: responseData.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
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
                                  builder: (context) => OnlineDataDetails(
                                      data: responseData[index])));
                        },
                        dense: true,
                        horizontalTitleGap: 6,
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -1),
                        leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[700],
                            child: Text(
                              responseData[index]['name']
                                  .substring(0, 1)
                                  .toUpperCase(),
                              style: TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )),
                        title: Text(
                          responseData[index]['name'].substring(0, 9),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.5),
                        ),
                        subtitle: Text(
                          responseData[index]['email'],
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
