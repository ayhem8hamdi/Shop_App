import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/favourit_star_icon.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';
import 'package:shopp_app/Widgets/item_screen_image.dart';
import 'package:shopp_app/Widgets/itme_screen_footer.dart';
import 'package:shopp_app/Widgets/quantity_counter_widget.dart';
import 'package:shopp_app/constants.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  static String id = 'ItemScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ItemScreenImage(image: 'Assets/Images/6.png'),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 40, bottom: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Product name',
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      QuantityCounterWidget(),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      StarIcon(),
                      Text(
                        '4.8',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '(457 reviews)',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Bright, juicy, and packed with Vitamin C, our fresh oranges are the perfect balance of sweet and tangy flavor. Ideal for snacking, juicing, or adding zest to your favorite recipes. Hand-picked to ensure the highest quality and ripeness. Elevate your daily fruit intake with nature's citrus powerhouse!",
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.6,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Time:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.clock,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '20 minutes',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            const ItmeScreenFooter(),
          ],
        ),
      ),
    );
  }
}
