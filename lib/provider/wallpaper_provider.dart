import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/provider/models/wallpaper.dart';
import 'package:mystic_wallpaper/provider/wallpaper_repo.dart';

final wallpaperProvider = FutureProvider<List<WallpapersModel>>((ref) async {
  return await WallpaperRepo().getWallpapers();
});
