import 'package:flutter/material.dart';
import 'package:shopp_app/constants.dart';

class AddToCartIcon extends StatelessWidget {
  const AddToCartIcon({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
        child: const Icon(
          size: 26,
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
