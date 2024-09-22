import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/favourit_star_icon.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';
import 'package:shopp_app/Widgets/item_screen_image.dart';
import 'package:shopp_app/constants.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  static String id = 'ItemScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ItemScreenImage(image: 'Assets/Images/6.png'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product name',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          ItemScreenIcon(icon: Icons.remove),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '01',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ItemScreenIcon(icon: Icons.add),
                        ],
                      ),
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

                  // Description Text
                  Text(
                    "Bright, juicy, and packed with Vitamin C, our fresh oranges are the perfect balance of sweet and tangy flavor. Ideal for snacking, juicing, or adding zest to your favorite recipes. Hand-picked to ensure the highest quality and ripeness. Elevate your daily fruit intake with nature's citrus powerhouse!",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
