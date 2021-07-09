import 'package:flutter/material.dart';
import 'package:login_ui/widgets/background.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign-up";
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        size: size,
        child: Center(
          child: Text("Sign up"),
        ),
      ),
    );
  }
}
