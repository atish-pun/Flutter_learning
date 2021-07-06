import 'package:calculator/screens/home/cv_screen.dart';
import 'package:calculator/screens/home/favorite_screen.dart';
import 'package:calculator/screens/home/list_view.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()..onTap = () {};   For recoznizer of richtext on press property
  // widgetspan
  int cIndex = 0;

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite), label: "Favorite", tooltip: "Favorite"),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
  ];
  // "To keep the track of any products you want \n,just tap the favorite icon"

  List<Widget> pages = [ListWork(), Favorite(), CvScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
        child: BottomNavigationBar(
          items: items,
          elevation: 0.0,
          currentIndex: cIndex,
          selectedItemColor: Colors.blue[800],
          unselectedFontSize: 13,
          selectedFontSize: 13,
          unselectedLabelStyle: TextStyle(color: Colors.grey[200]),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: Colors.blue[50],
          onTap: (index) {
            setState(() {
              cIndex = index;
            });
          },
        ),
      ),
    );
  }
}
