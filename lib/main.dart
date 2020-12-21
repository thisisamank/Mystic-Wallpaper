import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/routes/routes.dart';

import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/main_app_bar.dart';
import 'package:mystic_wallpaper/screens/sidebar/sidebar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppStyles.kMainAppBarTheme),
      home: Scaffold(
        backgroundColor: Pallete.kSidebarCardColor,
        body: Container(),
        appBar: MainAppBar(),
        drawer: AppDrawer(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
