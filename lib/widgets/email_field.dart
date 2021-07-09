import 'package:flutter/material.dart';

import '../constants.dart';

class EmailField extends StatelessWidget {
  final String hint;
  final Widget icon;
  final Function change;
  EmailField({
    @required this.hint,
    @required this.icon,
    @required this.change,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kTextColorBlack.withOpacity(0.2),
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: kPrimaryLightColor,
        prefixIcon: icon,
      ),
      onChanged: change,
    );
  }
}