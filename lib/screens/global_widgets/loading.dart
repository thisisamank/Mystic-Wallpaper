import 'dart:math';

import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final List<Color> _colors = [
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.lightBlue,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.teal,
    Colors.cyan
  ];

  Color getColor() {
    int random = Random().nextInt(_colors.length);
    return _colors[random];
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2,
      color: getColor(),
    );
  }
}
