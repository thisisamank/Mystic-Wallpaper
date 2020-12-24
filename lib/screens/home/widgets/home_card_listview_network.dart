import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

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
                    width: width/2,
                    height: height / 2,
                    color: Pallete.kSecondaryTeal,
                    child: Center(
                      child: Text(
                        "Loading...",
                        style: AppStyles.kBigTextStyle,
                      ),
                    ),
                  ),
                  width: width/2,
                  height: height/2,
                  fit: BoxFit.cover,
                  placeholderFadeInDuration: Duration(
                    milliseconds: 10,
                  ),
                )),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 30,
        ),
      ),
    );
  }
}

// Image.network(
//                 data[index].thumbnailImg,
//                 width: 280,
//                 height: 350,
//                 fit: BoxFit.cover,
//               ),
