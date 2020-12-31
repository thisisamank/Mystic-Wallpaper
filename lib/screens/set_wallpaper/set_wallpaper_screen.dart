import 'package:admob_flutter/admob_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:mystic_wallpaper/config/admob_constants.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/models/wallpaper.dart';
import 'package:mystic_wallpaper/provider/wallpaper_downloader.dart';
import 'package:mystic_wallpaper/screens/global_widgets/error.dart';
import 'package:share/share.dart';
import 'package:toast/toast.dart';
import 'package:uuid/uuid.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class SetWallpaperScreen extends StatefulWidget {
  SetWallpaperScreen({@required this.wallpaper});

  final WallpapersModel wallpaper;

  @override
  _SetWallpaperScreenState createState() => _SetWallpaperScreenState();
}

class _SetWallpaperScreenState extends State<SetWallpaperScreen> {
  @override
  Widget build(BuildContext context) {
    final uuid = Uuid();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: widget.wallpaper.wallpaperImg,
            width: width,
            height: height,
            fit: BoxFit.cover,
            placeholder: (context, str) => Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (ctx, string, err) => SthWentWrongError(),
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
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RawMaterialButton(
                        onPressed: () async {
                          Toast.show(
                              "Setting up wallpaper, please wait!", context);

                          var file = await DefaultCacheManager()
                              .getSingleFile(widget.wallpaper.wallpaperImg);

                          final result =
                              await WallpaperManager.setWallpaperFromFile(
                                  file.path, WallpaperManager.HOME_SCREEN);
                          if (result == "Wallpaper set") {
                            Toast.show("Wallpaper Set!", context);
                          }
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
                              style: AppStyles.kBoldTextStyle,
                            ),
                          ),
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          downloadImage(widget.wallpaper.wallpaperImg,
                              'wallpaper ${uuid.v1()}');
                          Toast.show("Downloading started...", context);
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
                        },
                        child: Image.asset(
                          ImageStore.share,
                          height: height * 0.075,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    Admob.initialize();
  }
}
