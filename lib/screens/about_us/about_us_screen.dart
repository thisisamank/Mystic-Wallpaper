import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/main_app_bar.dart';

import 'about_us_body.dart';

class AboutUsScreen extends StatelessWidget {
  static final route = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: AboutUsBody(),
      bottomNavigationBar: BottomNavBar(
        centerButtonRoute: "/categories",
      ),
    );
  }
}
