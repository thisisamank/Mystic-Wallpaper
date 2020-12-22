import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mystic_wallpaper/keys.dart';
import 'package:mystic_wallpaper/provider/models/wallpaper.dart';

class WallpaperRepo {
  Future<List<WallpapersModel>> getWallpapers() async {
    var url = Keys.apiUrl;
    var res = await http.get(url);
    List<WallpapersModel> wallpapersObj = [];
    List wallpapers = jsonDecode(res.body);
    for (final wallpaperJson in wallpapers) {
      final convertedObj = WallpapersModel.fromJson(json: wallpaperJson);
      wallpapersObj.add(convertedObj);
      print(convertedObj.toString());
    }
    return wallpapersObj;
  }
}
