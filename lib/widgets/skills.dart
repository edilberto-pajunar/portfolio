import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/constant/text.dart';
import 'package:portfolio/utils/button.dart';

import '../utils/skills_set.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Skills",
                    style: TextStyle(
                      color: tSecondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 54,
                      ),
                      children: [
                        TextSpan(text: "Why Hire Me For Your Next "),
                        TextSpan(
                          text: "Project?",
                          style: TextStyle(
                            color: tSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "I am a developer. I can make your design or ideas to make come true. Let us build your dream system.",
                    style: tSubtitle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Button(
                    text: "Hire Me",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SkillsSet(
                  title: "Web Developer",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                  icon: Icons.web,
                ),
                SizedBox(
                  width: 10,
                ),
                SkillsSet(
                  title: "Mobile Developer",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                  icon: Icons.mobile_friendly,
                ),
                SizedBox(
                  width: 10,
                ),
                SkillsSet(
                  title: "UI/UX",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                  icon: Icons.design_services,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 150,
        ),
        Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: GridView.count(
              crossAxisSpacing: 4,
              crossAxisCount: 3,
              children: [
                ToolsSet(
                  image:
                      "https://cdn.iconscout.com/icon/free/png-256/flutter-2752187-2285004.png",
                ),
                ToolsSet(
                  image:
                      "https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png",
                ),
                ToolsSet(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpngGRjYX1ca7qAADU3K6eGLj7ShQE3L2otdzfryl_Y9Ht2QRoQKYQbsXd36XIxMbYOw0&usqp=CAU",
                ),
                ToolsSet(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/CSS3_logo.svg/800px-CSS3_logo.svg.png",
                ),
                ToolsSet(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
                ),
                ToolsSet(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Android_logo_2019_%28stacked%29.svg/2346px-Android_logo_2019_%28stacked%29.svg.png",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ToolsSet extends StatelessWidget {
  final String image;
  const ToolsSet({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: tSecondaryColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
