import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class SthWentWrongError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2,
      color: Pallete.kSecondaryTeal,
      child: Center(
        child: Text(
          "Something Went Wrong!!!",
          style: AppStyles.kBigTextStyle,
        ),
      ),
    );
  }
}
