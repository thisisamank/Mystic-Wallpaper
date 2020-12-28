import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:mystic_wallpaper/keys.dart';
import 'package:mystic_wallpaper/models/category_wallpaper.dart';
import 'package:mystic_wallpaper/models/wallpaper.dart';

class WallpaperRepo {
  Future<List<WallpapersModel>> getWallpapersThumbnail() async {
    var url = Keys.baseApiUrl;
    var res = await http.get(url);
    List<WallpapersModel> wallpapersObj = [];
    List wallpapers = jsonDecode(res.body);
    int countWallpaper = 1;
    for (final wallpaperJson in wallpapers) {
      if (countWallpaper != 6) {
        final convertedObj = WallpapersModel.fromJson(json: wallpaperJson);
        wallpapersObj.add(convertedObj);
        countWallpaper++;
      }
    }
    return wallpapersObj;
  }

  int getRandomNumber(int till) {
    return Random().nextInt(till);
  }

  Future<List<WallpapersModel>> getWallpapersForHomeScreen() async {
    var url = Keys.baseApiUrl;
    var res = await http.get(url);
    List<WallpapersModel> wallpapersObj = [];
    List wallpapers = jsonDecode(res.body);
    List<WallpapersModel> homeScreenWallpapers = [];
    for (final wallpaperJson in wallpapers) {
      final convertedObj = WallpapersModel.fromJson(json: wallpaperJson);
      wallpapersObj.add(convertedObj);
    }
    for (var countWallpaper = 1; countWallpaper <= 5; countWallpaper++) {
      homeScreenWallpapers
          .add(wallpapersObj[getRandomNumber(wallpapersObj.length - 1)]);
    }
    return homeScreenWallpapers;
  }

  Future<List<WallpapersModel>> getWallpaperFromCategory(
      {final categoryId}) async {
    var url = '${Keys.categoryApiUrl}/$categoryId';
    var res = await http.get(url);
    final wallpapersFromCategoryJson = jsonDecode(res.body);
    CategoryWithWallpaper categoryWithWallpaper =
        CategoryWithWallpaper.fromJson(json: wallpapersFromCategoryJson);
    return categoryWithWallpaper.wallpapers;
  }
}
