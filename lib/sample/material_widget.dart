import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Flutter Tutorial",
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        title: Text("Appbar"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text(
          "Body",
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ),
      floatingActionButton:
          new FloatingActionButton(child: new Icon(Icons.add), onPressed: null),
    );
  }
}

class MyButon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        print("MyButton was tapped");
      },
      child: new Container(
        height: 36,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0), //垂直和水平对称的偏移量
        decoration: new BoxDecoration(),
      ),
    );
  }
}
