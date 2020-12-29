import 'package:flutter/material.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/config/images.dart';
import 'package:mystic_wallpaper/models/team.dart';

class AboutUsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final teamData = Team.teamList;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageStore.backgroundForTeam),
            SizedBox(
              height: 15,
            ),
            Container(
              width: width / 3,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Pallete.kSecondaryTeal,
              ),
              child: Center(
                child: Text(
                  "Teams",
                  style: TextStyle(
                      color: Pallete.kPrimaryTeal,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: width / 0.7,
                    height: height / 4,
                    decoration: BoxDecoration(
                        color: Pallete.kSecondaryTeal,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFB8CBCC),
                            ),
                            child: Center(
                              child: Image.asset(
                                Team.teamList[index].photo,
                                width: 130,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Column(
                              children: [
                                Container(
                                  width: width / 2.3,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: Pallete.kGaneshGradientColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    Team.teamList[index].name,
                                    style: AppStyles.kCategoryTitleTextStyle,
                                  )),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: width / 2.3,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Pallete.kPrimaryTeal,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    Team.teamList[index].work,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: teamData.length,
                separatorBuilder: (context, index) => Divider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}