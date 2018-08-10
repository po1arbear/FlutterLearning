import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to my app',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('text in appbar'),

        ),
        body: new Center(
          child: new Text("Hello World"),
        ),

      ),

    );
  }

}