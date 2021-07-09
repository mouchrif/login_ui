import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/widgets/background.dart';
import 'package:login_ui/widgets/email_field.dart';
import 'package:login_ui/widgets/password_field.dart';
import 'package:login_ui/widgets/rounded_button.dart';
import 'package:login_ui/widgets/rounded_text-field.dart';
import 'package:login_ui/widgets/social-icon.dart';
//add staf
class Authentification extends StatefulWidget {
  static String routeName = "/auth";

  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool login = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Background(
        size: size,
        child: Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          alignment: Alignment.center,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  login ? "sign in".toUpperCase() : "sign up".toUpperCase(),
                  style: TextStyle(
                    color: kTextColorWhite, //Color(0xff333511),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: login ? size.height * 0.06 : size.height * 0.03,
                ),
                SvgPicture.asset(
                  login
                      ? "assets/icons/mobile_login.svg"
                      : "assets/icons/authentication.svg",
                  width: size.width * 0.7 ,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: login ? size.height * 0.06 : size.height * 0.03,
                ),
                TextFieldContainer(
                  size: size,
                  child: EmailField(
                    hint: "Enter your email",
                    icon: Icon(
                      FontAwesomeIcons.userAlt,
                      size: 16.0,
                      color: kPrimaryColor,
                    ),
                    change: (value) {
                      print(value);
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                TextFieldContainer(
                  size: size,
                  child: PasswordField(
                    textHidden: isVisible ? false : true,
                    hint: "Enter your password",
                    icon: Icon(
                      FontAwesomeIcons.lock,
                      size: 16.0,
                      color: kPrimaryColor,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        isVisible
                            ? FontAwesomeIcons.eyeSlash
                            : FontAwesomeIcons.eye,
                        size: 16.0,
                        color: kPrimaryColor,
                      ),
                    ),
                    change: (value) {
                      print(value);
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedButton(
                  text: login ? "Sign In" : "Sign Up",
                  color: kPrimaryColor,
                  textColor: kTextColorWhite,
                  width: size.width * 0.8,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      login
                          ? "Don't have an Account ? "
                          : "Already have an Account ? ",
                      style: TextStyle(
                        color: kTextColorWhite,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Authentification.routeName, arguments: !login);
                      },
                      child: Text(
                        login ? "Sign Up" : "Sign In",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                if(!login)
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0
                      ),
                      width: size.width*0.8,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: kTextColorWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 8
                            ),
                            child: Text(
                              "Or".toUpperCase(),
                              style: TextStyle(
                                color: kTextColorWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: kTextColorWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialIcon(
                          icon: FontAwesomeIcons.facebookF,
                          press: (){
                            print("Facebook...");
                          },
                        ),
                        SocialIcon(
                          icon: FontAwesomeIcons.twitter,
                          press: (){
                            print("Twitter...");
                          },
                        ),
                        SocialIcon(
                          icon: FontAwesomeIcons.linkedinIn,
                          press: (){
                            print("Linkedin...");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
