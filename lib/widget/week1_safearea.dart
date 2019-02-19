/**
 * SafeArea能够自动检测异形屏
 * 并添加编剧保证child widget不会被遮挡
 * 默认top left right bottom 四个属性都为true
 * 若想取消某一边只需要设置该属性为flase即可
 * minimum属性能够添加默认边距
 */
import 'package:flutter/material.dart';

class Week1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(height: 200, color: Colors.pink),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.blue,
            child: new Text(
              "text",
              style: const TextStyle(
                  fontSize: 18.0, decoration: TextDecoration.none),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          )
        ]));
  }
}
