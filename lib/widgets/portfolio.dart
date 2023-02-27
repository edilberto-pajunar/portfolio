import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/constant/image_string.dart';
import 'package:portfolio/utils/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Portfolio extends StatefulWidget {
  Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int activeIndex = 0;
  List urlImages = [
    tMentasia,
    tCalculator,
    tPomodoro,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Portfolio",
                style: TextStyle(
                  color: tSecondaryColor,
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
                  "I have selected and mentioned here some of my latest project to share with you."),
              SizedBox(
                height: 30,
              ),
              Button(text: "Show More", onTap: () {}),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: urlImages.length,
                itemBuilder: ((context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                }),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: 0.5,
                  height: 400,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 32,
              ),
              buidIndicator(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      color: Colors.grey,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  buidIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: JumpingDotEffect(),
    );
  }
}
