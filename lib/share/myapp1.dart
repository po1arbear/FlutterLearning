import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Share App",
      home: new RandomWords(),
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _wordParis = <WordPair>[];
  final savedPairs = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    _wordParis.addAll(generateWordPairs().take(20));
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Scaffold title"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: _toSavedPairs,
            )
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              height: 600,
              child: new ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _wordParis.length,
                  itemBuilder: (context, i) {
                    if (i.isOdd) {
                      return new Divider();
                    } else {
                      return _buildRows(_wordParis[i]);
                    }
                  }),
            )
          ],
        ));
  }

  void _toSavedPairs() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final titles = savedPairs.map((pair) {
        return new ListTile(
          title: Text(pair.toString()),
        );
      });

      final divided =
          ListTile.divideTiles(tiles: titles, context: context).toList();
      return new Scaffold(
        appBar: new AppBar(
          title: new Container(
            alignment: new Alignment(0, 0),
            child: Text(
              "Saved Pairs",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            height: 100.0,
          ),
        ),
        body: ListView(children: divided),
      );
    }));
  }

  Widget _buildRows(WordPair pair) {
    final isAlreadySaved = savedPairs.contains(pair);
    return new ListTile(
      title: new Text(pair.asString),
      trailing: new Icon(
          isAlreadySaved ? Icons.favorite : Icons.favorite_border,
          color: isAlreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (isAlreadySaved) {
            savedPairs.remove(pair);
          } else {
            savedPairs.add(pair);
          }
        });
      },
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Icon(Icons.add),
      ),
    );
  }
}
