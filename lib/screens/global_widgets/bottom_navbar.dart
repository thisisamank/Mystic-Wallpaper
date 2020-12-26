import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class BottomNavBar extends StatelessWidget {
  final centerButtonRoute;
  final leftButtonRoute;
  final rightButtonRoute;
  BottomNavBar({
    this.centerButtonRoute,
    this.leftButtonRoute,
    this.rightButtonRoute,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RawMaterialButton(
              onPressed: () {
                if (leftButtonRoute != null) {
                  Navigator.pushNamed(context, leftButtonRoute);
                }
                print("Clicked");
              },
              child: Image.asset(
                ImageStore.starBig,
                fit: BoxFit.fitWidth,
                width: 25,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                if (centerButtonRoute != null) {
                  Navigator.pushNamed(context, centerButtonRoute);
                }
              },
              child: Image.asset(
                ImageStore.bottomButton,
                fit: BoxFit.fitWidth,
                width: 45,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                if (rightButtonRoute != null) {
                  Navigator.pushNamed(context, rightButtonRoute);
                }
              },
              child: Image.asset(
                ImageStore.profile,
                fit: BoxFit.fitWidth,
                width: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
