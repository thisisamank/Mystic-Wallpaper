import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/provider/wallpaper_provider.dart';
import 'package:mystic_wallpaper/screens/global_widgets/bottom_navbar.dart';
import 'package:mystic_wallpaper/screens/global_widgets/secondary_appbar.dart';
import 'package:mystic_wallpaper/screens/set_wallpaper/set_wallpaper_screen.dart';

class GodWallpaperScreen extends HookWidget {
  final title;
  final id;
  GodWallpaperScreen({@required this.title, @required this.id});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final wallpaper = useProvider(wallpaperCategoryProvider(id));
    return Scaffold(
      appBar: SecondaryAppBar(
        title: title,
      ),
      body: wallpaper.when(
        data: (data) => GodScreenBody(data: data),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (src, str) => Text("Error"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class GodScreenBody extends StatelessWidget {
  final data;
  GodScreenBody({
    @required this.data,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width,
        height: height,
        child: GridView.count(
          padding: EdgeInsets.symmetric(horizontal: 20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: List.generate(data.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SetWallpaperScreen(
                              wallpaper: data[index],
                            )));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20.0,
                    )
                  ]),
                  child: CachedNetworkImage(
                    imageUrl: data[index].thumbnailImg,
                    placeholder: (context, url) => Container(
                      color: Pallete.kSecondaryTeal,
                      child: Center(
                        child: Text(
                          "Loading...",
                          style: AppStyles.kBigTextStyle,
                        ),
                      ),
                    ),
                    fit: BoxFit.cover,
                    placeholderFadeInDuration: Duration(
                      milliseconds: 10,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
