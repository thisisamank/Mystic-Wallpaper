import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  var routeName;
  MainAppBar({this.routeName});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      automaticallyImplyLeading: false,
      leadingWidth: width / 4,
      centerTitle: true,
      leading: RawMaterialButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset(
          ImageStore.hamburgerButton,
          width: 40,
        ),
      ),
      title: RawMaterialButton(
        onPressed: () {
          Navigator.pop(context);
          // if (routeName != null) {
          //   Navigator.pushNamed(context, routeName);
          // }
        },
        child: Image.asset(
          ImageStore.logo,
          width: 45,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
