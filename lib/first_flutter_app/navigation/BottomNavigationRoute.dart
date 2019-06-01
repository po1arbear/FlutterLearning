import 'package:flutter/material.dart';
import 'package:flutter_app_test/first_flutter_app/navigation/EmailPage.dart';
import 'package:flutter_app_test/first_flutter_app/navigation/HomePage.dart';
import 'package:flutter_app_test/first_flutter_app/navigation/PageFour.dart';
import 'package:flutter_app_test/first_flutter_app/navigation/PageThree.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bnColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    pages..add(Homepage())..add(EmailPage())..add(PageThree())..add(PageFour());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: _bnColor),
                title: Text(
                  'Home',
                  style: TextStyle(color: _bnColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.email, color: _bnColor),
                title: Text(
                  'Email',
                  style: TextStyle(color: _bnColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.pages, color: _bnColor),
                title: Text(
                  'Pages',
                  style: TextStyle(color: _bnColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplay, color: _bnColor),
                title: Text(
                  'Airplay',
                  style: TextStyle(color: _bnColor),
                ))
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
