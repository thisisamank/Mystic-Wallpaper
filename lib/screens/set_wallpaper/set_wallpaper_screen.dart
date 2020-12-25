import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:toast/toast.dart';
import 'package:mystic_wallpaper/provider/wallpaper_downloader.dart';
import 'package:share/share.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/provider/models/wallpaper.dart';
import 'package:mystic_wallpaper/provider/set_wallpaper.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class SetWallpaperScreen extends StatelessWidget {
  SetWallpaperScreen({@required this.wallpaper});
  final WallpapersModel wallpaper;
  @override
  Widget build(BuildContext context) {
    final uuid = Uuid();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: wallpaper.wallpaperImg,
            width: width,
            height: height,
            fit: BoxFit.fitHeight,
            placeholder: (context, str) => Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  ImageStore.arrowLeftOverDownload,
                  width: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  RawMaterialButton(
                    onPressed: () async {
                      var file = await DefaultCacheManager()
                          .getSingleFile(wallpaper.wallpaperImg);

                      final result =
                          await WallpaperManager.setWallpaperFromFile(
                              file.path, WallpaperManager.HOME_SCREEN);
                      Toast.show("Wallpaper Set", context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Pallete.kSidebarCardColor,
                      ),
                      width: width / 2.7,
                      height: height * 0.08,
                      child: Center(
                        child: Text(
                          "Set Wallpaper",
                          style: AppStyles.kCategoryTitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 11,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      // TODO: download activate
                      downloadImage(
                          wallpaper.wallpaperImg, 'wallpaper ${uuid.v1()}');
                      Toast.show("Downloading started...", context);
                      print("Clicked!!!!!!!!");
                    },
                    child: Image.asset(
                      ImageStore.downloadImg,
                      height: height * 0.075,
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Share.share(
                          "Hey Checkout this great app, i am using it to get great wallpapers. visit www.csspoint101.com");
                      print("Clicked!!!!!!!!");
                    },
                    child: Image.asset(
                      ImageStore.share,
                      height: height * 0.075,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
