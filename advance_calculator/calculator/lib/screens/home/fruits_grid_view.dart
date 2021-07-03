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
  int cartValue = 0;
  String cart = "Add";
  List<dynamic> lists = [];
  @override
  void initState() {
    callFruits();
    super.initState();
  }

  void cartChange() {
    setState(() {
      cartValue++;
    });
  }

  Future callFruits() async {
    var fruitValue = await listData();
    setState(() {
      this.lists = fruitValue;
    });
  }

  Future<dynamic> listData() {
    Future<dynamic> fruitData = Future.delayed(Duration(seconds: 3), () {
      return Fruits.fruits;
    });
    return fruitData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          "Fruits",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.009,
                right: MediaQuery.of(context).size.height * 0.019),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.098,
                  width: MediaQuery.of(context).size.width * 0.098,
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 23,
                    ),
                  ),
                ),
                Positioned(
                  left: 13,
                  top: 5,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[900],
                    ),
                    child: Center(
                      child: Text(
                        cartValue.toString(),
                        style: TextStyle(
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.04,
        ),
        child: lists.isEmpty
            ? Center(
                child: Container(
                height: 26,
                width: 26,
                child: CircularProgressIndicator(
                  strokeWidth: 2.3,
                  backgroundColor: Colors.grey[300],
                ),
              ))
            : RefreshIndicator(
                backgroundColor: Colors.blue[700],
                color: Colors.white,
                strokeWidth: 1.2,
                onRefresh: callFruits,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio:
                            MediaQuery.of(context).size.aspectRatio * 1.66,
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0),
                    itemCount: lists.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FruitsDetails(
                                fruits: lists[index],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.01,
                                      right: MediaQuery.of(context).size.width *
                                          0.01),
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: Hero(
                                    tag: Fruits.fruits[index].name.toString(),
                                    child: Image.network(
                                      "${lists[index].image ?? "https://static.thenounproject.com/png/340719-200.png"}",
                                      fit: BoxFit.contain,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${lists[index].name ?? "....."}",
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.017),
                                      ),
                                      Text(
                                        "\$${lists[index].price ?? "0.0"}" +
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
                                  height: MediaQuery.of(context).size.height *
                                      0.014,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 12.0, left: 12.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      child: Container(
                                        height: 23,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue.shade100,
                                                blurRadius: 3.5,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Colors.blue.shade800,
                                                width: 0.0),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.shoppingCart,
                                              color: Colors.blue[800],
                                              size: 11.4,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              cart,
                                              style: TextStyle(
                                                  color: Colors.blue[800],
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        cartChange();
                                      },
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
      ),
    );
  }
}
