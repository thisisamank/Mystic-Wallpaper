import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/screens/about_us/about_us_screen.dart';
import 'package:mystic_wallpaper/screens/bookmarked/bookmark_screen.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CategoryScreen.route: (context) => CategoryScreen(),
  BookkarkScreen.route: (context) => BookkarkScreen(),
  AboutUsScreen.route: (context) => AboutUsScreen()
};
