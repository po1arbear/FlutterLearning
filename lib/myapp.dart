import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to my app',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('text in appbar'),

        ),
        body: new Center(
//          child: new Text(wordPair.asPascalCase),
            child: new RandomWords(),
        ),

      ),

    );
  }

}


class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
  
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}