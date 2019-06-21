import 'package:flutter/material.dart';
import 'package:flutter_app_test/sample/AnimatedListStandard.dart';

void main() {
  runApp(new AnimatedListSample());
}

class AnimatedListSample extends StatefulWidget {
  ListModel<int> _list;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "AnimatedList",
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("AnimatedList"),
          actions: <Widget>[
            IconButton(icon: new Icon(Icons.add_circle), onPressed: null),
            IconButton(icon: new Icon(Icons.remove_circle), onPressed: null)
          ],
        ),
        body: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: AnimatedList(
              initialItemCount: _list.length, itemBuilder: _buildItem),
        ),
      ),
    );
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: _list[index],
      selected: true,
      onTap: () {},
    );
  }

  @override
  State<StatefulWidget> createState() {
    _list = new ListModel(listKey: null, removedItemBuilder: null);
    // TODO: implement createState
    return null;
  }
}
