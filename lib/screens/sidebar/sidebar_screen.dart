import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/config/constants.dart';
import 'package:mystic_wallpaper/models/sidebar.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: _screenHeight,
        width: _screenWidth * 0.65,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageStore.logo,
                width: 120,
              ),
              SizedBox(
                height: _screenHeight * 0.03,
              ),
              Text(
                Constants.appTitle,
                style: AppStyles.kBigTextStyle,
              ),
              SizedBox(
                height: _screenHeight * 0.02,
              ),
              Container(
                width: _screenWidth * 0.45,
                height: _screenHeight * 0.0045,
                color: Pallete.kPrimaryTeal,
              ),
              SizedBox(
                height: _screenHeight * 0.04,
              ),
              Container(
                width: _screenWidth * 0.55,
                height: _screenHeight * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kSecondaryTeal),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(Constants.appSubtitle,
                        style: AppStyles.kNormalTextStyle),
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.06,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                  primary: false,
                  itemCount: DrawerData.drawerData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RawMaterialButton(
                      onPressed: () {},
                      child: Container(
                        width: _screenWidth * 0.50,
                        height: _screenHeight * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Pallete.kSidebarCardColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              DrawerData.drawerData[index].title,
                              style: AppStyles.kBoldTextStyle,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
