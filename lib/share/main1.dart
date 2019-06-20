import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'My App',
      home: new StatefulHome(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}

class StatelessHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.airplanemode_active),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class StatefulHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StatefulHomeState();
  }
}

class StatefulHomeState extends State<StatefulHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.tv),
          )
        ],
      ),
    );
  }

  void _setState(Widget w) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: new Text("onPress"),
    ));
//    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("Sending Message"),
//    ));
  }
}
