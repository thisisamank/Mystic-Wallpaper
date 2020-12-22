import 'package:mystic_wallpaper/config/config.dart';

class DrawerData {
  DrawerData({this.title});
  final title;
  final style = AppStyles.kCategoryTitleTextStyle;

  static final drawerData = [
    DrawerData(
      title: "Categories",
    ),
    DrawerData(
      title: "Bookmarked",
    ),
    DrawerData(
      title: "About Us!",
    )
  ];
}
