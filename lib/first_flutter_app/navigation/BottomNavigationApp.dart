import 'package:flutter/material.dart';
import 'package:flutter_app_test/first_flutter_app/navigation/BottomNavigationRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter bottom navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavigationWidget(),
    );
  }
}
