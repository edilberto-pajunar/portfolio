import 'package:flutter/material.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/skills.dart';

import '../../widgets/body.dart';
import '../../widgets/contact.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/portfolio.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300.0, vertical: 50),
          child: Column(
            children: [
              Column(
                children: [
                  NavBar(),
                  SizedBox(height: 30),
                  Body(),
                ],
              ),
              SizedBox(
                height: 300,
              ),
              Skills(),
              SizedBox(
                height: 400,
              ),
              Portfolio(),
              SizedBox(
                height: 400,
              ),
              Contact(),
              SizedBox(
                height: 100,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
