import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mystic_wallpaper/keys.dart';
import 'package:mystic_wallpaper/provider/models/category_wallpaper.dart';
import 'package:mystic_wallpaper/provider/models/wallpaper.dart';

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

  Future<List<WallpapersModel>> getWallpaperFromCategory(
      {int categoryId}) async {
    var url = '${Keys.categoryApiUrl}/$categoryId';
    var res = await http.get(url);
    List<WallpapersModel> wallpapersObj = [];
    final wallpapersFromCategoryJson = jsonDecode(res.body)[0];
    CategoryWithWallpaper categoryWithWallpaper =
        CategoryWithWallpaper.fromJson(json: wallpapersFromCategoryJson);
    return categoryWithWallpaper.wallpapers;
  }
}
