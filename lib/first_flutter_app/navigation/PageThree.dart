import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageThreeState();
  }
}

class PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageThree')),
    );
  }
}
