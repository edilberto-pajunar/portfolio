import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';

class ContactCard extends StatelessWidget {
  final String title;
  final  icon;
  final String subtitle;
  const ContactCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tSecondaryColor.withOpacity(0.1),
      height: 100,
      width: 300,
      child: Center(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(title),
          ),
          subtitle: Text(subtitle),
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: tPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: FaIcon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
