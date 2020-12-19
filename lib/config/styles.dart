import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/config/pallete.dart';

class AppTextStyles {
  static final kBigTextStyle = TextStyle(
    color: Pallete.kPrimaryBlack,
    fontSize: 22,
    fontFamily: "Nunito",
    fontWeight: FontWeight.bold,
  );
  static final kNormalTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 16,
  );
  static final kBoldTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Pallete.kPrimaryTeal,
  );
  static final kCategoryTitleTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontWeight: FontWeight.bold,
    color: Pallete.kPrimaryTeal,
    fontSize: 20,
  );
  static final kCategorySubTitleTextStyle = TextStyle(
    fontFamily: "Nunito",
    color: Pallete.kPrimaryBlack,
    fontSize: 12,
  );
}
