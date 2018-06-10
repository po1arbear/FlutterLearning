// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';

void main() {
//  runApp(new Center(child: new Text('你好，世界！', textDirection :TextDirection.ltr)));
//  runApp(new MyAppBar());
  runApp(new MaterialApp(
    title: "material app",
    home: new MyScaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 3.0),
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu), tooltip: "导航菜单", onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: "搜索", onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('Big Tiltle',
                style: Theme.of(context).primaryTextTheme.title,                textDirection:TextDirection.ltr
            ),
          ),
          new Expanded(
              child: new Center(
            child: new Text("你好，世界 ！"),
          )),
        ],
      ),
    );
  }
}
