import 'package:flutter/material.dart';
import 'package:shamo/widgets/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      body: Center(
        child: Image.asset(
          'image_splash.png',
          width: 130,
          height: 150,
        ),
      ),
    );
  }
}
