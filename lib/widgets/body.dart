import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/image_string.dart';
import 'package:portfolio/utils/button.dart';

import '../utils/social_media.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome",
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 58,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(text: "I have "),
                    TextSpan(
                        text: "Creative Design ",
                        style: TextStyle(
                          color: Colors.green,
                        )),
                    TextSpan(text: "Experience"),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "I'm Edilberto, a creative Product Designer. I've been helping business to solve their problems with my design for 2 years.",
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
                  TextButton.icon(
                    onPressed: () {},
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
            ),
            SizedBox(
              height: 40,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.google,
            ),
            SizedBox(
              height: 40,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.github,
            ),
          ],
        ),
      ],
    );
  }
}
