import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mystic_wallpaper/config/config.dart';
import 'package:mystic_wallpaper/models/models_export.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsWidgets extends StatelessWidget {
  final Socials _socials;
  SocialsWidgets(this._socials);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _socials != null
          ? [
              IconButton(
                  onPressed: () {
                    launch(Uri(
                      scheme: 'mailto',
                      path: _socials.email,
                    ).toString());
                  },
                  icon: Icon(
                    Icons.email,
                    color: Pallete.kPrimaryTeal,
                    size: 28,
                  )),
              IconButton(
                onPressed: () {
                  launch(_socials.website);
                },
                icon: Icon(
                  Icons.language,
                  color: Pallete.kPrimaryTeal,
                  size: 28,
                ),
              ),
              IconButton(
                  onPressed: () {
                    launch(_socials.instagram);
                  },
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Pallete.kPrimaryTeal,
                    size: 28,
                  )),
            ]
          : [],
    );
  }
}
