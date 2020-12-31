import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/routes/routes.dart';
import 'package:mystic_wallpaper/screens/about_us/about_us_screen.dart';
import 'package:mystic_wallpaper/screens/bookmarked/bookmark_screen.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/main_app_bar.dart';
import 'package:mystic_wallpaper/screens/home/home_screens.dart';
import 'package:mystic_wallpaper/screens/sidebar/sidebar_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  Admob.initialize();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppStyles.kMainAppBarTheme,
        primaryColor: Pallete.kPrimaryTeal,
      ),
      home: Scaffold(
        backgroundColor: Pallete.kSidebarCardColor,
        body: HomeScreen(),
        appBar: MainAppBar(),
        drawer: AppDrawer(),
        bottomNavigationBar: BottomNavBar(
          leftButtonRoute: BookmarkScreen.route,
          rightButtonRoute: AboutUsScreen.route,
          centerButtonRoute: CategoryScreen.route,
        ),
      ),
    );
  }
}
