import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/screens/category/widget/category_list.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/secondary_appbar.dart';

class CategoryScreen extends StatelessWidget {
  static final route = '/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(
        title: "Category",
      ),
      backgroundColor: Pallete.kSidebarCardColor,
      body: CategoryList(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
