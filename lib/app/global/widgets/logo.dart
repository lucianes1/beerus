import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double width;

  Logo({this.width = 131});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/logo.png',
        width: width,
      ),
    );
  }
}
