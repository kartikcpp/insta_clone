import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key,
      required this.WebScreenlayout,
      required this.mobileScreenlayout})
      : super(key: key);
  final Widget WebScreenlayout;
  final Widget mobileScreenlayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        //web screen
        return WebScreenlayout;
      }
      // mobile screen
      return mobileScreenlayout;
    });
  }
}
