import 'package:flutter/material.dart';
import 'package:shopp_app/Views/item_screen.dart';
import 'package:shopp_app/Widgets/add_to_cart_icon.dart';
import 'package:shopp_app/constants.dart';

class TopCatItem extends StatelessWidget {
  const TopCatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'Assets/Images/5.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'item title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xff555555),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Text(
            'Fresh Fruit 2Kg',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$20.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: kPrimaryColor,
                ),
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ItemScreen.id),
                  child: const AddToCartIcon())
            ],
          ),
        ],
      ),
    );
  }
}
