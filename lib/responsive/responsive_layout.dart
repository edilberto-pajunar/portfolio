import 'package:flutter/material.dart';
import 'package:portfolio/constant/dimensions.dart';
import 'package:portfolio/responsive/tablet_body.dart';

import 'desktop_body.dart';
import 'mobile_body.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? desktopBody;
  final Widget? mobileBody;
  final Widget? tabletBody;
  const ResponsiveLayout(
      {super.key, this.desktopBody, this.mobileBody, this.tabletBody});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= desktopWidth &&
      MediaQuery.of(context).size.width >= mobileWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > desktopWidth) {
        return desktopBody!;
      } else if (constraints.maxWidth <= desktopWidth &&
          constraints.maxWidth >= 800) {
        return tabletBody!;
      } else {
        return mobileBody!;
      }
    });
  }
}
