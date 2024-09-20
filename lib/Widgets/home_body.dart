import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/category_item_builder.dart';
import 'package:shopp_app/constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'See all',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 140,
            child: CustomListViewBuilder(),
          ),
        ],
      ),
    );
  }
}
