import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/item_screen_image.dart';
import 'package:shopp_app/constants.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  static String id = 'Itemscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ItemScreenImage(image: 'Assets/Images/6.png'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
