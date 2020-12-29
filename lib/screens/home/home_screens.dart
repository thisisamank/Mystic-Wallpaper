import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/config/admob_constants.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/provider/wallpaper_provider.dart';
import 'package:mystic_wallpaper/screens/global_widgets/error.dart';
import 'package:mystic_wallpaper/screens/home/widgets/category_badge.dart';
import 'package:mystic_wallpaper/screens/home/widgets/home_card_listview_network.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adMobConstants = AdMobConstants();
    final wallpapers = useProvider(randomWallpapersProvider);
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Categories",
              style: AppStyles.kBoldHomeTextStyles,
            ),
            CategoryBadges(),
            Text(
              "Mystic's Exclusive",
              style: AppStyles.kBoldHomeTextStyles,
            ),
            wallpapers.when(
              data: (config) {
                return HomeCardListViewNetWork(
                  data: config,
                );
              },
              loading: () => SizedBox(
                height: height / 2.5,
                width: width,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (err, stack) => SthWentWrongError(),
            ),
            AdmobBanner(
                adUnitId: adMobConstants.bannerAdId,
                adSize: AdmobBannerSize.BANNER),
          ],
        ),
      ),
    );
  }
}
