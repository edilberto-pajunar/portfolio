import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/social_media.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("@ 2023. All Rights Reserved"),
            Text("Designed by Tanvir Ahmed"),
            Row(
              children: [
                SocialMedia(
                  icon: FontAwesomeIcons.facebook,
                  uri: "https://www.facebook.com/choi.pajunar123",
                ),
                SizedBox(
                  width: 10,
                ),
                SocialMedia(
                  icon: FontAwesomeIcons.twitter,
                  uri: "https://twitter.com/choi_nav",
                ),
                SizedBox(
                  width: 10,
                ),
                SocialMedia(
                  icon: FontAwesomeIcons.linkedin,
                  uri: "https://www.linkedin.com/feed/",
                ),
                SizedBox(
                  width: 10,
                ),
                SocialMedia(
                  icon: FontAwesomeIcons.github,
                  uri: "https://github.com/eunhachingu",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
