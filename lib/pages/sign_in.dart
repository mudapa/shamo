import 'package:flutter/material.dart';
import 'package:shamo/widgets/theme.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Sign In to Continue',
                style: secondTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 70),
              Text(
                'Email Address',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                style: secondTextStyle,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff262A34),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email',
                  hintStyle: secondTextStyle,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Password',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                style: secondTextStyle,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff262A34),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  hintStyle: secondTextStyle,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: primaryTextStyle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 200,
                  left: 110,
                ),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: secondTextStyle,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Sign Up',
                      style: signTextStyle.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
