import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/pages/checkout.dart';
import 'package:shamo/pages/checkout_success.dart';
import 'package:shamo/pages/detail_chat.dart';
import 'package:shamo/pages/edit_profile.dart';
import 'package:shamo/pages/cart.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/product.dart';
import 'package:shamo/pages/sign_in.dart';
import 'package:shamo/pages/sign_up.dart';
import 'package:shamo/pages/splash_screen.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/providers/product_provider.dart';

void main() => runApp(Shamo());

class Shamo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/sign-in': (context) => SignIn(),
          '/sign-up': (context) => SignUp(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChat(),
          '/edit-profile': (context) => EditProfile(),
          '/cart': (context) => Cart(),
          '/checkout': (context) => Checkout(),
          '/checkout-success': (context) => CheckoutSuccess(),
        },
      ),
    );
  }
}
