import 'package:calculator/models/fruits_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitsDetails extends StatelessWidget {
  const FruitsDetails({Key? key, this.fruits}) : super(key: key);
  final FruitsProperties? fruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "${fruits!.name ?? "No fruit"}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 19, letterSpacing: 0.9),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 7),
              height: MediaQuery.of(context).size.height * 0.24,
              child: Hero(
                tag: fruits!.name.toString(),
                child: Image(
                  image: NetworkImage(
                      "${fruits!.image ?? "https://static.thenounproject.com/png/340719-200.png"}",
                      scale: 3.1),
                ),
              ),
            ),
            CarouselSlider(
                items: fruits!.imageSlider!
                    .map((slider) => Container(
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                slider,
                                fit: BoxFit.contain,
                              )
                            ],
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 0.28,
                    height: 75,
                    enableInfiniteScroll: true,
                    autoPlay: true)),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 13, left: 17, right: 17),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Details:",
                                    style: TextStyle(
                                        fontSize: 15.4,
                                        color: Color(0xff3c4043),
                                        fontWeight: FontWeight.bold,
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Color(0xffA8A4A4),
                                  thickness: 1,
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                                Text(
                                  fruits!.name.toString(),
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Color: ",
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                                Text(
                                  fruits!.fruitColor.toString(),
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Scientific name: ",
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                                Text(
                                  fruits!.scientificName.toString(),
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Price: ",
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                                Text(
                                  "\$" + fruits!.price.toString() + " per Kg",
                                  style: TextStyle(
                                      color: Color(0xff6A6767),
                                      fontSize: 14.7,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Description:",
                                    style: TextStyle(
                                        fontSize: 15.4,
                                        color: Color(0xff3c4043),
                                        fontWeight: FontWeight.bold,
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Color(0xffA8A4A4),
                                  thickness: 1,
                                )),
                              ],
                            ),
                            Text(
                              fruits!.description.toString(),
                              style: TextStyle(
                                  color: Color(0xff6A6767),
                                  fontSize: 14.7,
                                  fontFamily:
                                      GoogleFonts.openSans().fontFamily),
                              textAlign: TextAlign.justify,
                            ),
                          ]),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
