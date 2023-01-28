import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';
import 'package:url_launcher/link.dart';

class SocialMedia extends StatelessWidget {
  final String uri;
  final IconData icon;
  const SocialMedia({
    Key? key,
    required this.icon,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(uri),
      builder: (context, followLink) => InkWell(
        onTap: followLink,
        child: Container(
          height: 25,
          width: 25,
          child: Center(
            child: FaIcon(
              icon,
              size: 15,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: tPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
