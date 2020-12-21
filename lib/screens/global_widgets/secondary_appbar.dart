import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class SecondaryAppBar extends StatelessWidget with PreferredSizeWidget {
  final title;
  SecondaryAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SizedBox(
            width: 90,
          ),
          Text(
            title,
            style: AppStyles.kBigTextStyle,
          ),
        ],
      ),
      leading: RawMaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          ImageStore.leftArrow,
          width: 35,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
