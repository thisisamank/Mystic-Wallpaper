import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/models/wallpaper.dart';
import 'package:mystic_wallpaper/provider/wallpaper_repo.dart';

final wallpaperProvider =
    FutureProvider.autoDispose<List<WallpapersModel>>((ref) async {
  return await WallpaperRepo().getWallpapersThumbnail();
});

final wallpaperCategoryProvider = FutureProvider.autoDispose
    .family<List<WallpapersModel>, String>((ref, id) async {
  return WallpaperRepo().getWallpaperFromCategory(categoryId: id);
});
final randomWallpapersProvider =
    FutureProvider.autoDispose<List<WallpapersModel>>((ref) async {
  return WallpaperRepo().getWallpapersForHomeScreen();
});
