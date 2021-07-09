import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  final bool textHidden;
  final String hint;
  final Widget icon;
  final Widget suffixIcon;
  final Function change;
  PasswordField({
    @required this.textHidden,
    @required this.hint,
    @required this.icon,
    this.suffixIcon,
    @required this.change,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: textHidden,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kTextColorBlack.withOpacity(0.2),
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: kPrimaryLightColor,
        prefixIcon: icon,
        suffixIcon: suffixIcon,
      ),
      onChanged: change,
    );
  }
}
