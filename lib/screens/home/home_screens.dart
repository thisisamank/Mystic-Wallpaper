import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/models/wallpapers.dart';
import 'package:mystic_wallpaper/screens/home/widgets/category_badge.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: AppStyles.kBigTextStyle,
            ),
            SizedBox(
              height: 35,
            ),
            CategoryBadges(),
            SizedBox(
              height: 35,
            ),
            Text(
              "Mystic's Exclusive",
              style: AppStyles.kBigTextStyle,
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 370,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Wallpapers.wallpapers.length,
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
                      child: Image.network(
                        Wallpapers.wallpapers[index].thumbnailImg,
                        width: 280,
                        height: 350,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
