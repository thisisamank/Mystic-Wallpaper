import 'package:mystic_wallpaper/config/config.dart';

class Team {
  final name;
  final photo;
  final work;

  Team({this.name, this.photo, this.work});

  static List<Team> teamList = [
    Team(
      name: "Aman Kumar",
      work: "App Developer",
      photo: ImageStore.amanPhoto,
    ),
    Team(
      name: "Jatin Raj",
      work: "UI/UX Designer",
      photo: ImageStore.jatinPhoto,
    ),
    Team(
      name: "Shatabdi Roy",
      work: "Illustrations",
      photo: ImageStore.shatabdiPhoto,
    ),
  ];
}
