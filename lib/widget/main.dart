import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_test/widget/week1_safearea.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter weekly',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Week1(),
    );
  }
}
