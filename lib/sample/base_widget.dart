import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "MaterialApp title",
    home: new MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.blue,
            child: new MyAppbar(
              title: new Container(
                  padding: const EdgeInsets.only(left: 10),
                  color: Colors.white,
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Text(
                        "My Appbar",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  )),
            ),
          ),
          new Expanded(child: new Center(child: new Text("hello world")))
        ],
      ),
    );
  }
}

class MyAppbar extends StatelessWidget {
  MyAppbar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.home), onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(
                Icons.home,
                color: Colors.red,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
