import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RawMaterialButton(
              onPressed: () {
                print("Clicked");
              },
              child: Image.asset(
                ImageStore.starBig,
                fit: BoxFit.fitWidth,
                width: 30,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categories');
                print("Clicked");
              },
              child: Image.asset(
                ImageStore.bottomButton,
                fit: BoxFit.fitWidth,
                width: 45,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                print("Clicked");
              },
              child: Image.asset(
                ImageStore.profile,
                fit: BoxFit.fitWidth,
                width: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
