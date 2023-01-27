import 'package:flutter/material.dart';
import 'package:portfolio/utils/button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Portfolio",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(text: "My Creative Works Latest "),
                    TextSpan(
                      text: "Projects",
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
                  "I have selected and mentioned here some of my latest project to share with you."),
              SizedBox(
                height: 30,
              ),
              Button(text: "Show More", onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
