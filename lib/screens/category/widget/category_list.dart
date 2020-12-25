import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/provider/models/category.dart';
import 'package:mystic_wallpaper/screens/god_wallpaper/god_wallpaper_screen.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: Category.allCategories.length,
        separatorBuilder: (context, index) => SizedBox(
          height: 35,
        ),
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GodWallpaperScreen(
                          id: '${Category.allCategories[index].id}',
                          title:
                              '${Category.allCategories[index].categoryName}',
                        ))),
            child: Center(
              child: Container(
                width: _screenWidth * 0.80,
                height: _screenHeight * 0.23,
                decoration: BoxDecoration(
                  gradient: Category.allCategories[index].background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        Category.allCategories[index].illustation,
                      ),
                      fit: BoxFit.fitHeight,
                      height: _screenHeight * 0.18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Category.allCategories[index].categoryName,
                          style: AppStyles.kCategoryTitleTextStyle,
                        ),
                        Text(
                            '${Category.allCategories[index].numberOfImages} Images',
                            style: AppStyles.kCategorySubTitleTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
