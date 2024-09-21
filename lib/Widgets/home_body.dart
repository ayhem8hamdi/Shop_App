import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/category_item_builder.dart';
import 'package:shopp_app/Widgets/custom_grid_builder.dart';
import 'package:shopp_app/Widgets/home_body_headers.dart';

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
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBodyHeaders(text: 'Category'),
          SizedBox(height: 10),
          SizedBox(
            height: 101,
            child: CustomListViewBuilder(
              type: 'cat',
            ),
          ),
          SizedBox(
            height: 17,
          ),
          HomeBodyHeaders(text: 'Popular'),
          SizedBox(height: 10),
          SizedBox(
            height: 125,
            child: CustomListViewBuilder(
              type: 'pop',
            ),
          ),
          SizedBox(
            height: 17,
          ),
          HomeBodyHeaders(text: 'Top'),
          CustomGridBuilder()
        ],
      ),
    );
  }
}
