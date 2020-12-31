import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class Loading extends StatelessWidget {
  final color = Pallete.getRandomColor();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2,
      color: color,
    );
  }
}
