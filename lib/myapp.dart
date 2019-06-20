import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/first_flutter_app/route/NewRoute.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'MaterialApp title',
      home: new RandomWords(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scaffold title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _pushSaved() {
//    Navigator.of(context)
//        .push(new MaterialPageRoute(builder: (context) => new NewRoute()));
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final titles = _saved.map(
        (wordPair) {
          return new ListTile(
            title: new Text(
              wordPair.asPascalCase,
              style: _biggerFont,
            ),
          );
        },
      );
      final divided =
          ListTile.divideTiles(context: context, tiles: titles).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Saved Suggestions'),
        ),
        body: new ListView(children: divided),
      );
    }));
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      //对于每个建议的单词对都会调用异常itemBuilder，然后将单词对添加到ListTile行中
      //在偶数行，该函数会为单词对添加一个ListTitle row.
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider(); //如果是奇数，返回分割线
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          //如果是最后一个，再添加10个
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
