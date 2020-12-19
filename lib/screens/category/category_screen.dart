import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/models/category.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
        itemCount: Category.allCategories.length,
        separatorBuilder: (context, index) => SizedBox(
              height: 30,
            ),
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              width: _screenWidth * 0.90,
              height: _screenHeight * 0.25,
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
                    height: _screenHeight * 0.2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Category.allCategories[index].categoryName,
                        style: AppTextStyles.kCategoryTitleTextStyle,
                      ),
                      Text(
                          '${Category.allCategories[index].numberOfImages} Images',
                          style: AppTextStyles.kCategorySubTitleTextStyle),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
