import 'package:flutter/material.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/sign_in.dart';
import 'package:shamo/pages/sign_up.dart';
import 'package:shamo/pages/splash_screen.dart';

void main() => runApp(Shamo());

class Shamo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
