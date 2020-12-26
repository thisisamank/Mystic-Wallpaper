import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/screens/about_us/about_us_screen.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/main_app_bar.dart';
import 'package:mystic_wallpaper/screens/sidebar/sidebar_screen.dart';

class BookkarkScreen extends StatelessWidget {
  static final route = '/bookmark';
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: MainAppBar(),
      bottomNavigationBar: BottomNavBar(
        rightButtonRoute: AboutUsScreen.route,
        centerButtonRoute: CategoryScreen.route,
      ),
      body: Center(
        child: Container(
          width: _screenWidth / 1.2,
          height: _screenHeight / 2.5,
          color: Pallete.kSecondaryTeal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageStore.bot),
              SizedBox(
                height: 20,
              ),
              Text(
                "Coming soon...",
                style: AppStyles.kBoldHomeTextStyles,
              ),
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
