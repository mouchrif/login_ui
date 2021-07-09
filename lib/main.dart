import 'package:flutter/material.dart';

import './screens/authentification.dart';
import './constants.dart';
import './screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login ui app',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryLightColor,
        fontFamily: 'Muli',
        scaffoldBackgroundColor: Color(0xffb6b675).withOpacity(0.9),
      ),
      home: WelcomeScreen(),
      initialRoute: "/",
      routes: {
        "/auth": (ctx) => Authentification(),
        // "/sign-up": (ctx) => SignUpScreen(),
      },
    );
  }
}
