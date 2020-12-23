import 'package:mystic_wallpaper/provider/models/wallpaper.dart';

class CategoryWithWallpaper {
  List<WallpapersModel> wallpapers;
  int id;
  CategoryWithWallpaper({this.wallpapers, this.id});
  factory CategoryWithWallpaper.fromJson({Map<String, dynamic> json}) {
    final id = json['id'];
    List wallpapersJson = json['wallpapers'];
    var wallpaperObj;
    for (var wallpaper in wallpapersJson) {
      wallpaperObj.add(WallpapersModel.fromJson(json: wallpaper));
    }
    return CategoryWithWallpaper(wallpapers: wallpaperObj, id: id);
  }
}
