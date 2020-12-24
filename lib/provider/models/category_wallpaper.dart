import 'package:mystic_wallpaper/provider/models/wallpaper.dart';

class CategoryWithWallpaper {
  List<WallpapersModel> wallpapers;
  int id;
  CategoryWithWallpaper({this.wallpapers, this.id});
  factory CategoryWithWallpaper.fromJson({Map<String, dynamic> json}) {
    final id = json['id'];
    List wallpapersJson = json['wallpapers'];
    List<WallpapersModel> wallpaperObj = [];
    for (var wallpaper in wallpapersJson) {
      wallpaperObj.add(WallpapersModel.fromCategoryJson(json: wallpaper));
    }
    return CategoryWithWallpaper(wallpapers: wallpaperObj, id: id);
  }
}
