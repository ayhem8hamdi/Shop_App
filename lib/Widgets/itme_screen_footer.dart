import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/add_cart_widgt.dart';
import 'package:shopp_app/constants.dart';

class ItmeScreenFooter extends StatelessWidget {
  const ItmeScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '120\$',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 29,
              color: kPrimaryColor,
            ),
          ),
          const AddCart()
        ],
      ),
    );
  }
}
