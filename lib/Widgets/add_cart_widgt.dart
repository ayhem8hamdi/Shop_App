import 'package:flutter/material.dart';
import 'package:shopp_app/constants.dart';

class AddCart extends StatelessWidget {
  const AddCart({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21), color: kPrimaryColor),
        child: const Row(
          children: [
            Icon(
              size: 26,
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            Text(
              'Add To Cart',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
