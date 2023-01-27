import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/button.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 500,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Skills",
                style: TextStyle(
                  color: Colors.green,
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
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  "I'm specialist in UI/Ux Designe. My passion is designing & sovling problems through user experience and research."),
              SizedBox(
                height: 30,
              ),
              Button(text: "Hire Me", onTap: () {}),
            ],
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SkillsSet(
                  alignment: Alignment.centerRight,
                  icon: Icons.diamond,
                  text: "Visual Design",
                  subText:
                      "Create user interface design with unique & modern ideas",
                ),
                SizedBox(
                  width: 100,
                ),
                SkillsSet(
                  alignment: Alignment.topLeft,
                  icon: Icons.diamond,
                  text: "Visual Design",
                  subText:
                      "Create user interface design with unique & modern ideas",
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            SkillsSet(
              alignment: Alignment.bottomLeft,
              icon: Icons.diamond,
              text: "Visual Design",
              subText:
                  "Create user interface design with unique & modern ideas",
            ),
          ],
        ),
      ],
    );
  }
}

class SkillsSet extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subText;
  final Alignment alignment;
  const SkillsSet({
    Key? key,
    required this.icon,
    required this.text,
    required this.subText,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: alignment,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FaIcon(
              FontAwesomeIcons.diamond,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subText,
            ),
          ],
        ),
      ),
    );
  }
}
