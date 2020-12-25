import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class SetWallpaper {
  static void from({final src}) async {
    var file = await DefaultCacheManager().getSingleFile(src);

    final result = await WallpaperManager.setWallpaperFromFile(
        file.path, WallpaperManager.HOME_SCREEN);
    // result returned from Wallpaper Manager "Wallpaper set" : "There was an error."
  }
}
