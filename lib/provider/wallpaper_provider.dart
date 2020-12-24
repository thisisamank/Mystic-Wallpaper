import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/provider/models/wallpaper.dart';
import 'package:mystic_wallpaper/provider/wallpaper_repo.dart';

final wallpaperProvider =
    FutureProvider.autoDispose<List<WallpapersModel>>((ref) async {
  return await WallpaperRepo().getWallpapersThumbnail();
});

final wallpaperCategoryProvider = FutureProvider.autoDispose
    .family<List<WallpapersModel>, int>((ref, id) async {
  return await WallpaperRepo().getWallpaperFromCategory(categoryId: id);
});
