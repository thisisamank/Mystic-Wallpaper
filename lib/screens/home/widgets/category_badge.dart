import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/provider/models/category.dart';
import 'package:mystic_wallpaper/screens/category/category_screen.dart';
import 'package:mystic_wallpaper/screens/god_wallpaper/god_wallpaper_screen.dart';

class CategoryBadges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: _screenHeight * 0.08,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final data = Category.homePageCategories;
            return RawMaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    if (data[index].id != 0) {
                      return GodWallpaperScreen(
                          id: '${data[index].id}',
                          title: data[index].categoryName);
                    } else {
                      return CategoryScreen();
                    }
                  }),
                );
              },
              child: Container(
                width: _screenWidth / 3.2,
                decoration: BoxDecoration(
                  color: Category.homePageCategories[index].flatBackground,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    Category.homePageCategories[index].categoryName,
                    style: Category.homePageCategories[index].textStyle,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
                width: 10,
              ),
          itemCount: Category.homePageCategories.length),
    );
  }
}
