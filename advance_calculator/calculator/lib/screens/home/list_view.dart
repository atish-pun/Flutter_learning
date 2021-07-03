import 'package:calculator/models/fruits_model.dart';
import 'package:calculator/screens/home/fruits_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Fruits_list_details.dart';

class ListWork extends StatefulWidget {
  const ListWork({Key? key}) : super(key: key);

  @override
  _ListWorkState createState() => _ListWorkState();
}

class _ListWorkState extends State<ListWork> {
  var index;
  @override
  Widget build(BuildContext context) {
    // List<String> data = List.generate(10, (index) => card(Child:Text("atish")));
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blue[800],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade300, width: 0.3))),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Atish.jpg"),
                    ),
                    accountName: Text(
                      "Atish pun",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.9,
                          fontSize: 15),
                    ),
                    accountEmail: Text(
                      "punatish16@gmail.com",
                      style: TextStyle(letterSpacing: 0.8, fontSize: 13),
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.home,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[100],
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.read_more_rounded,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text(
                        "About us",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[100],
                        ),
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.chat,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text("Message",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[100],
                          )),
                    ),
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.call,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text("Conatct Us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[100],
                          )),
                    ),
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.support_agent,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text("Support",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[100],
                          )),
                    ),
                    ListTile(
                      horizontalTitleGap: -1,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(
                        Icons.help_center,
                        color: Colors.blue[100],
                        size: 21,
                      ),
                      title: Text("Help",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[100],
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "Powered by Atish pun",
                style: TextStyle(color: Colors.blue[100], fontSize: 13),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.blue[800],
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GridViewList()));
          },
          child: Icon(
            Icons.grid_view,
            size: 22,
          ),
        ),
      ),
      appBar: AppBar(
        brightness: Brightness.dark,
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
                    leading: Hero(
                      tag: Fruits.fruits[index].name.toString(),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: NetworkImage(
                            "${Fruits.fruits[index].image ?? "https://static.thenounproject.com/png/340719-200.png"}"),
                        backgroundColor: Colors.transparent,
                      ),
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
