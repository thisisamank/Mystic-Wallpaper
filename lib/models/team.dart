import 'package:mystic_wallpaper/config/config.dart';

class Socials {
  final instagram;
  final email;
  final website;
  Socials({this.instagram, this.email, this.website});
}

class Team {
  final name;
  final photo;
  final work;
  final Socials socials;

  Team({this.name, this.photo, this.work, this.socials});

  static List<Team> teamList = [
    Team(
      name: "Aman Kumar",
      work: "App Developer",
      photo: ImageStore.amanPhoto,
      socials: null,
    ),
    Team(
      name: "Jatin Raj",
      work: "UI/UX Designer",
      photo: ImageStore.jatinPhoto,
      socials: null,
    ),
    Team(
      name: "Shatabdi Roy",
      work: "Illustrator",
      photo: ImageStore.shatabdiPhoto,
      socials: Socials(
        instagram: "https://www.instagram.com/stealingcolours/",
        email: "shatabdiroybgp@gmail.com",
        website: "https://www.shatabdiroy.me",
      ),
    ),
  ];
}
