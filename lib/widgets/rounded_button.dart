import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function press;
  final double width;

  RoundedButton({
    this.text,
    this.color,
    this.textColor,
    this.width,
    this.press,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29.0),
          )),
          elevation: MaterialStateProperty.all(8),
          shadowColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.4)),
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
            vertical: 16.0
          )),
        ),
        onPressed: press, 
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
