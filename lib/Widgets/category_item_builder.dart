import 'package:flutter/material.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/custom_category_item.dart';
import 'package:shopp_app/Widgets/popular_catgory_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
    required this.type,
    required this.cat,
  });
  final String type;
  final List<Category> cat;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cat.length,
        itemBuilder: (context, index) => type == 'cat'
            ? CustomCategory(cat: cat[index])
            : PopularCatgoryItem(image: cat[index].image));
  }
}
