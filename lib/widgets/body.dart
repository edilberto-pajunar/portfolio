import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/image_string.dart';
import 'package:portfolio/utils/button.dart';
import 'package:url_launcher/link.dart';

import '../utils/social_media.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 58,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(text: "I am "),
                    TextSpan(
                        text: "Edilberto ",
                        style: TextStyle(
                          color: Colors.green,
                        )),
                    TextSpan(
                        text: "Freelance Web and Mobile Developer",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Everyday is a new learning in a world of programming. Let me teach you my own way.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Button(
                    text: "Contact Me",
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        "https://drive.google.com/file/d/1AyP8SKvSbBvjL_rKPN2z2yhfI-xCV4Yt/view?usp=sharing"),
                    builder: (context, followLink) => TextButton.icon(
                      onPressed: followLink,
                      icon: Text(
                        "View Portfolio",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      label: Icon(
                        Icons.subdirectory_arrow_left_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Profile
        SizedBox(
          width: 300,
        ),
        Expanded(
          child: Container(
            height: 500,
            child: Stack(
              children: [
                Positioned(
                  top: 150,
                  left: 150,
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 100,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 130,
                  bottom: 50,
                  child: Container(
                    height: 500,
                    child: Image.asset(
                      tProfile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                "Follow me on:",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 1,
              height: 50,
              color: Colors.green,
            ),
            SizedBox(
              height: 50,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.facebook,
              uri: "https://www.facebook.com/choi.pajunar123",
            ),
            SizedBox(
              height: 40,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.twitter,
              uri: "https://twitter.com/choi_nav",
            ),
            SizedBox(
              height: 40,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.github,
              uri: "https://github.com/eunhachingu",
            ),
          ],
        ),
      ],
    );
  }
}
