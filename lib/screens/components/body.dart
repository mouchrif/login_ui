import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/screens/authentification.dart';
import 'package:login_ui/widgets/background.dart';
import 'package:login_ui/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      size: size,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to olive shop".toUpperCase(),
              style: TextStyle(
                color: kTextColorWhite, //Color(0xff333511),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            SvgPicture.asset(
              "assets/icons/online_groceries.svg",
              width: size.width * 0.7,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            RoundedButton(
              text: "Sign in",
              textColor: kTextColorWhite,
              color: kPrimaryColor,
              width: size.width * 0.8,
              press: () {
                Navigator.of(context).pushReplacementNamed(
                    Authentification.routeName,
                    arguments: true);
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(
              text: "sign up",
              textColor: kTextColorWhite,
              color: kPrimaryLightColor,
              width: size.width * 0.8,
              press: () {
                Navigator.of(context).pushReplacementNamed(
                    Authentification.routeName,
                    arguments: false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
