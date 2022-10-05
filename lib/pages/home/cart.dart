import 'package:flutter/material.dart';
import 'package:shamo/widgets/theme.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 87,
        backgroundColor: bg1Color,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
          ),
        ),
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget emptyCart() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: bg3Color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_empty_cart.png',
                width: 80,
              ),
              SizedBox(height: 20),
              Text(
                'Opss! Your Cart is Empty',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Let\'s find your favorite shoes',
                style: secondTextStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                width: 152,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget productCart() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        height: 110,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: bg4Color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_remove.png',
                      width: 10,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Remove',
                      style: alertTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Terrex Urban Low',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$143,98',
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/button_add.png',
                  width: 16,
                ),
                SizedBox(height: 2),
                Text(
                  '2',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 2),
                Image.asset(
                  'assets/button_min.png',
                  width: 16,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget subTotal() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sub Total',
              style: primaryTextStyle,
            ),
            Text(
              '\$287,96',
              style: priceTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonCheckout() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 13,
            ),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continue to Checkout',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: primaryTextColor,
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Column(
          children: [
            productCart(),
            Spacer(),
            subTotal(),
            Divider(
              thickness: 1,
              color: bg5Color,
            ),
            buttonCheckout(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg3Color,
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
