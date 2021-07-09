import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Size size;
  final Widget child;
  TextFieldContainer({this.size, @ required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29.0),
        child: child,
      ),
    );
  }
}
