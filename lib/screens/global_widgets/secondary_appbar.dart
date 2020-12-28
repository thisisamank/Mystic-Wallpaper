import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class SecondaryAppBar extends StatelessWidget with PreferredSizeWidget {
  final title;
  SecondaryAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      titleSpacing: -_screenWidth * 0.15,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RawMaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              ImageStore.leftArrow,
              width: 35,
            ),
          ),
          Text(
            title,
            style: AppStyles.kBoldHomeTextStyles,
          ),
          SizedBox(
            width: _screenWidth * 0.35,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
