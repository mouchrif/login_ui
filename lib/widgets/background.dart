import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size size;
  final Widget child;
  Background({
    this.size,
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Image(
              width: size.width * 0.6,
              image: AssetImage("assets/images/bg-top.png"),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Image(
              width: size.width * 0.6,
              image: AssetImage("assets/images/bg-bottom.png"),
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
