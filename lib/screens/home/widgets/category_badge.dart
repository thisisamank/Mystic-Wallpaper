import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/provider/models/category.dart';

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
            return RawMaterialButton(
              onPressed: () {},
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
