import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/screens/about_us/about_us_screen.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/main_app_bar.dart';
import 'package:mystic_wallpaper/screens/sidebar/sidebar_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BookmarkScreen extends StatelessWidget {
  static final route = '/bookmark';
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: MainAppBar(
        routeName: '/',
      ),
      bottomNavigationBar: BottomNavBar(
        rightButtonRoute: AboutUsScreen.route,
        centerButtonRoute: CategoryScreen.route,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            SizedBox(
              height: 25,
            ),
            RawMaterialButton(
              onPressed: () {
                launch('https://forms.gle/LfiS8wb4RQmx9JRd7');
              },
              child: Container(
                width: _screenWidth / 1.4,
                height: 50,
                decoration: BoxDecoration(
                  color: Pallete.kPrimaryTeal,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Suggest a Feature!",
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
