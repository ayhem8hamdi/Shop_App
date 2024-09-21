import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/custom_category_item.dart';
import 'package:shopp_app/Widgets/popular_catgory_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
    required this.type,
  });
  final String type;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => type == 'cat'
            ? const CustomCategory(image: 'Assets/Images/5.png')
            : const PopularCatgoryItem(image: 'Assets/Images/5.png'));
  }
}
