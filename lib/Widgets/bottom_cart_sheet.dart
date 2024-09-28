import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/custom_elevatedbutton.dart';
import 'package:shopp_app/Widgets/shopping_fee_facture.dart';
import 'package:shopp_app/Widgets/top_product_cards_buildr.dart';
import 'package:shopp_app/constants.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
          children: [TopProductCartBuildr(), SoppingFee(), CheckOutWidget()]),
    );
  }
}

class CheckOutWidget extends StatelessWidget {
  const CheckOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 8,
                spreadRadius: 1)
          ]),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '120\$',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  inherit: false),
            ),
          ),
          const CustomElevatedButton(
            text: 'Check Out',
            raduis: 30,
            padding: 12,
          )
        ],
      ),
    );
  }
}
