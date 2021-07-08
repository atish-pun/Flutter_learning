import 'package:calculator/screens/home/Fetch_online/covid_infected.dart';
import 'package:calculator/screens/home/Fetch_online/fetch_json.dart';
import 'package:calculator/screens/home/cv_screen.dart';
import 'package:calculator/screens/home/list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        icon: Icon(Icons.email), label: "Mail", tooltip: "Mail"),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.viruses), label: "Covid", tooltip: "Covid"),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
  ];

  List<Widget> pages = [
    ListWork(),
    Mail(),
    CovidInfected(),
    CvScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        child: BottomNavigationBar(
          items: items,
          currentIndex: cIndex,
          selectedItemColor: Colors.blue[800],
          unselectedFontSize: 13,
          iconSize: 21,
          unselectedItemColor: Colors.grey[600],
          selectedFontSize: 13,
          unselectedLabelStyle: TextStyle(color: Colors.red),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue[100],
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
