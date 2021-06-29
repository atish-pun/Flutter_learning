import 'package:calculator/models/fruits_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Fruits_list_details.dart';

class ListWork extends StatefulWidget {
  const ListWork({Key? key}) : super(key: key);

  @override
  _ListWorkState createState() => _ListWorkState();
}

class _ListWorkState extends State<ListWork> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.blue.shade800,
        statusBarIconBrightness: Brightness.light));

    // List<String> data = List.generate(10, (index) => ("atish").toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fruits",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.02,
          bottom: MediaQuery.of(context).size.width * 0.03,
        ),
        child: ListView.builder(
            itemCount: Fruits.fruits.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.05,
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.008,
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
                              builder: (context) => FruitsDetails(
                                    fruits: Fruits.fruits[index],
                                  )));
                    },
                    dense: true,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage(
                          "${Fruits.fruits[index].image ?? "https://static.thenounproject.com/png/340719-200.png"}"),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      "${Fruits.fruits[index].name ?? "....."}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: Text(
                      "\$" + "${Fruits.fruits[index].price ?? "0.0"}" + "/Kg",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    trailing: CircleAvatar(
                        radius: 14,
                        backgroundColor: Fruits.fruits[index].color,
                        child: Text(
                          Fruits.fruits[index].name.toString().substring(0, 1),
                          style: TextStyle(
                              color: Colors.blue[120],
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
