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
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: kPrimaryColor),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              size: 30,
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Add To Cart',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
