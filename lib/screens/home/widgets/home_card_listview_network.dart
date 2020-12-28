import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/screens/global_widgets/loading.dart';
import 'package:mystic_wallpaper/screens/set_wallpaper/set_wallpaper_screen.dart';

class HomeCardListViewNetWork extends StatelessWidget {
  final data;

  HomeCardListViewNetWork({this.data});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 2.5,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SetWallpaperScreen(
                      wallpaper: data[index],
                    ),
                  ),
                );
              },
              child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20.0,
                    )
                  ]),
                  child: CachedNetworkImage(
                    imageUrl: data[index].thumbnailImg,
                    placeholder: (context, url) => Loading(),
                    width: width / 2,
                    height: height / 2,
                    fit: BoxFit.cover,
                    placeholderFadeInDuration: Duration(
                      milliseconds: 10,
                    ),
                  )),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 30,
        ),
      ),
    );
  }
}
