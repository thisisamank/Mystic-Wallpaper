import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/provider/wallpaper_provider.dart';
import 'package:mystic_wallpaper/screens/home/widgets/category_badge.dart';
import 'package:mystic_wallpaper/screens/home/widgets/home_card_listview_network.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final wallpapers = useProvider(wallpaperProvider);
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
              style: AppStyles.kBoldHomeTextStyles,
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
              style: AppStyles.kBoldHomeTextStyles,
            ),
            SizedBox(
              height: 35,
            ),
            wallpapers.when(
              data: (config) {
                return HomeCardListViewNetWork(
                  data: config,
                );
              },
              loading: () => CircularProgressIndicator(),
              error: (err, stack) => Text("error"),
            ),
          ],
        ),
      ),
    );
  }
}
