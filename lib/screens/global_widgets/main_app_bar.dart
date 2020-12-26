import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      automaticallyImplyLeading: false,
      titleSpacing: -5,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              ImageStore.hamburgerButton,
              width: 40,
            ),
          ),
          Image.asset(
            ImageStore.logo,
            width: 40,
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bookmark');
            },
            child: Image.asset(
              ImageStore.starSmall,
              width: 25,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
