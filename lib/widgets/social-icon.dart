import 'package:flutter/material.dart';

import '../constants.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Function press;
  SocialIcon({@required this.icon, @required this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
        child: Icon(
          icon,
          size: 24.0,
          color: kTextColorWhite,
        ),
      ),
    );
  }
}
