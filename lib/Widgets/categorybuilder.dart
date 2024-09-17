import 'package:flutter/material.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/catgory_item.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key, required this.lcat});
  final List<Category> lcat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.7),
          itemCount: lcat.length,
          itemBuilder: (context, index) => CategoryItem(cat: lcat[index])),
    );
  }
}
