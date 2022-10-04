import 'package:flutter/material.dart';
import 'package:shamo/widgets/theme.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        toolbarHeight: 87,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        backgroundColor: bg1Color,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: bg3Color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg3Color,
      appBar: header(),
      body: content(),
    );
  }
}
