import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/add_cart_widgt.dart';
import 'package:shopp_app/constants.dart';

class ItmeScreenFooter extends StatelessWidget {
  const ItmeScreenFooter({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '\$ ${price % 1 != 0 ? price.toString() : price.toInt()}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: kPrimaryColor,
              ),
            ),
          ),
          const AddCart()
        ],
      ),
    );
  }
}
