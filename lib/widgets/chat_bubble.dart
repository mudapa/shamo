import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/widgets/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({
    this.isSender = false,
    this.text = '',
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: isSender ? bg5Color : bg4Color,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES COURT VISION 2.0 SHOES COURT VISION 2.0 SHOES',
                        style: primaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$57,15',
                        style: priceTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: purpleTextStyle,
                  ),
                ),
                SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      fontWeight: medium,
                      color: bg5Color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: isSender ? bg5Color : bg4Color,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
