import 'package:flutter/cupertino.dart';
import 'package:mystic_wallpaper/config/config.dart';

class Category {
  Category({
    this.id,
    this.background,
    this.categoryName,
    this.illustation,
    this.flatBackground,
    this.textStyle,
  });

  final id;
  final textStyle;
  final categoryName;
  final numberOfImages = 30;
  final background;
  final illustation;
  final flatBackground;
  static final allCategories = [
    Category(
      id: 1,
      categoryName: 'Lord Hanuman',
      illustation: ImageStore.hanuman,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kHanumanGradientColor,
      ),
    ),
    Category(
      id: 2,
      categoryName: 'Lord Ganesh',
      illustation: ImageStore.ganesh,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kGaneshGradientColor,
      ),
    ),
    Category(
      id: 3,
      categoryName: 'Lord Shiva',
      illustation: ImageStore.shiv,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kShivaGradientColor,
      ),
    ),
    Category(
      id: 4,
      categoryName: 'Durga Maa',
      illustation: ImageStore.durga,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kDurgaGradientColor,
      ),
    ),
    Category(
      id: 5,
      categoryName: 'Lord Krishna',
      illustation: ImageStore.krishna,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kKrishnaGradientColor,
      ),
    ),
    Category(
      id: 6,
      categoryName: 'Lord Vishnu',
      illustation: ImageStore.vishnu,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kVishnuGradientColor,
      ),
    ),
    Category(
      id: 7,
      categoryName: 'Lord Brahma',
      illustation: ImageStore.brahma,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kBrahmaGradientColor,
      ),
    ),
    Category(
      id: 8,
      categoryName: 'Lord Ram',
      illustation: ImageStore.ram,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kRamGradientColor,
      ),
    ),
    Category(
      id: 10, //This is done to map with API DON'T CHANGE
      categoryName: 'Saraswati Maa',
      illustation: ImageStore.saraswati,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kSaraswatiGradientColor,
      ),
    ),
    Category(
      id: 11,
      categoryName: 'Lakshmi Maa',
      illustation: ImageStore.lakshmi,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kLakshmiGradientColor,
      ),
    ),
  ];

  static final homePageCategories = [
    Category(
      id: 1,
      categoryName: 'Hanuman',
      flatBackground: Pallete.kPrimaryTeal,
      textStyle: AppStyles.kSemiBoldTextStyle,
    ),
    Category(
      id: 2,
      categoryName: 'Ganesh',
      flatBackground: Pallete.kSecondaryTeal,
      textStyle: AppStyles.kSemiBoldTealTextStyle,
    ),
    Category(
      id: 3,
      categoryName: 'Shiva',
      flatBackground: Pallete.kSecondaryTeal,
      textStyle: AppStyles.kSemiBoldTealTextStyle,
    ),
    Category(
      id: 0,
      textStyle: AppStyles.kSemiBoldTealTextStyle,
      categoryName: 'Show More',
      flatBackground: Pallete.kSecondaryTeal,
    ),
  ];
}
