import 'package:flutter/material.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/custom_category_item.dart';
import 'package:shopp_app/Widgets/popular_catgory_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
    required this.type,
  });
  final String type;

  final List<Category> list1 = const [
    Category(image: 'Assets/Images/1.png', title: 'Strawberry'),
    Category(image: 'Assets/Images/2.png', title: 'Orange'),
    Category(image: 'Assets/Images/3.png', title: 'Cake'),
    Category(image: 'Assets/Images/4.png', title: 'Felfel'),
    Category(image: 'Assets/Images/5.png', title: 'Tmatem'),
    Category(image: 'Assets/Images/6.png', title: 'Offeh'),
    Category(image: 'Assets/Images/7.png', title: 'Lham')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list1.length,
        itemBuilder: (context, index) => type == 'cat'
            ? CustomCategory(cat: list1[index])
            : PopularCatgoryItem(image: list1[index].image));
  }
}
