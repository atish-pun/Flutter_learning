import 'package:calculator/models/fruits_model.dart';
import 'package:calculator/screens/home/Fruits_list_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridViewList extends StatefulWidget {
  const GridViewList({Key? key}) : super(key: key);

  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridViewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Fruits",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.04,
        ),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.81,
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0),
            itemCount: Fruits.fruits.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FruitsDetails(
                                fruits: Fruits.fruits[index],
                              )));
                },
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    child: Column(
                      children: [
                        Image.network(
                          "${Fruits.fruits[index].image ?? "https://static.thenounproject.com/png/340719-200.png"}",
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.height * 0.15,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${Fruits.fruits[index].name ?? "....."}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    letterSpacing: 0.9),
                              ),
                              Container(
                                height: 10,
                                child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1.2,
                                    width: MediaQuery.of(context).size.width *
                                        0.017),
                              ),
                              Text(
                                "\$${Fruits.fruits[index].price ?? "0.0"}" +
                                    "/Kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 0.9),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 9.5,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 12.0, left: 12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              child: Container(
                                height: 23,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          blurRadius: 4.4,
                                          offset: Offset.zero)
                                    ],
                                    borderRadius: BorderRadius.circular(4)),
                                child: Icon(
                                  FontAwesomeIcons.shoppingCart,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
