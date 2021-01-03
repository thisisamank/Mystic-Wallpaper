import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/config/pallete.dart';

class AppStyles {
  static final kBigTextStyle = TextStyle(
    color: Pallete.kPrimaryBlack,
    fontSize: 22,
    fontFamily: "Nunito",
    fontWeight: FontWeight.bold,
  );
  static final kNormalTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final kBoldTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Pallete.kPrimaryTeal,
  );
  static final kSemiBoldTealTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Pallete.kPrimaryTeal,
  );
  static final kSemiBoldTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Pallete.kSecondaryTeal,
  );
  static final kCategoryTitleTextStyle = TextStyle(
    fontFamily: "Nunito",
    fontWeight: FontWeight.w700,
    color: Pallete.kPrimaryTeal,
    fontSize: 20,
  );
  static final kCategorySubTitleTextStyle = TextStyle(
    fontFamily: "Nunito",
    color: Pallete.kPrimaryBlack,
    fontSize: 12,
  );

  static final kBoldHomeTextStyles = TextStyle(
    color: Pallete.kPrimaryTeal,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Nunito',
  );
  static final kMainAppBarTheme = AppBarTheme(
    elevation: 0,
    color: Colors.white,
  );
}
