import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CategoryScreen(),
      ),
    );
  }
}
