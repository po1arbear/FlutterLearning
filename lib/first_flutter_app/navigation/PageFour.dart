import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageFourState();
  }
}

class PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageFour')),
    );
  }
}
