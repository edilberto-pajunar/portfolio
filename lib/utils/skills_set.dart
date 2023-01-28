import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';

class SkillsSet extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const SkillsSet(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: tPrimaryColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF00BBFE),
            blurRadius: 2,
            offset: Offset(0, 10),
          ),
        ],
        border: Border.all(
          width: 2,
          color: Color(0xFF00BBFE),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 60,
            color: Colors.white60,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
