import 'package:flutter/cupertino.dart';
import 'package:mystic_wallpaper/config/config.dart';

class Category {
  Category({
    this.background,
    this.categoryName,
    this.illustation,
  });

  final categoryName;
  final numberOfImages = 30;
  final background;
  final illustation;

  static final allCategories = [
    Category(
      categoryName: 'Lord Shiva',
      illustation: ImageStore.shiv,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kShivaGradientColor,
      ),
    ),
    Category(
      categoryName: 'Durga Maa',
      illustation: ImageStore.durga,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kDurgaGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lord Ganesh',
      illustation: ImageStore.ganesh,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kGaneshGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lord Ram',
      illustation: ImageStore.ram,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kRamGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lord Krishna',
      illustation: ImageStore.krishna,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kKrishnaGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lord Brahma',
      illustation: ImageStore.brahma,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kBrahmaGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lord Hanuman',
      illustation: ImageStore.hanuman,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kHanumanGradientColor,
      ),
    ),
    Category(
      categoryName: 'Saraswati Maa',
      illustation: ImageStore.saraswati,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kSaraswatiGradientColor,
      ),
    ),
    Category(
      categoryName: 'Lakshmi Maa',
      illustation: ImageStore.lakshmi,
      background: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: Pallete.kLakshmiGradientColor,
      ),
    ),
  ];
}
