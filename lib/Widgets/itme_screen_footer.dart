import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/add_cart_widgt.dart';
import 'package:shopp_app/constants.dart';

class ItmeScreenFooter extends StatelessWidget {
  const ItmeScreenFooter({super.key});

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
              '120\$',
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
