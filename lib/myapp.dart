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
      title: 'Startup Name Generator',
      home: new RandomWords(),
//      title: 'Welcome to my app',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('text in appbar'),

//        ),
//        body: new Center(
////          child: new Text(wordPair.asPascalCase),
//            child: new RandomWords(),
//        ),
//
//      ),
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
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Startup Name Generator"),
      ),
      body: _buildSuggestions(),
    );
  }
  
  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      //对于每个建议的单词对都会调用异常itemBuilder，然后将单词对添加到ListTile行中
      //在偶数行，该函数会为单词对添加一个ListTitle row.
      itemBuilder: (context, i){
        if(i.isOdd) return new Divider();
        final index = i ~/2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair){
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

}



