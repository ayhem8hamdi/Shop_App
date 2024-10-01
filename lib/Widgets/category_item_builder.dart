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
  @override
  Widget build(BuildContext context) {
    final List<Category> list1 = [
      Category(
          image: 'Assets/Images/1.png',
          title: 'Strawberry',
          stock: 120,
          price: 120),
      Category(
          image: 'Assets/Images/2.png', title: 'Orange', stock: 120, price: 15),
      Category(
          image: 'Assets/Images/3.png', title: 'Cake', stock: 120, price: 200),
      Category(
          image: 'Assets/Images/4.png',
          title: 'Felfel',
          stock: 120,
          price: 350),
      Category(
          image: 'Assets/Images/5.png',
          title: 'Tmatem',
          stock: 120,
          price: 400),
      Category(
          image: 'Assets/Images/6.png', title: 'Offeh', stock: 120, price: 10),
      Category(
          image: 'Assets/Images/7.png', title: 'Lham', stock: 120, price: 47)
    ];
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list1.length,
        itemBuilder: (context, index) => type == 'cat'
            ? CustomCategory(cat: list1[index])
            : PopularCatgoryItem(image: list1[index].image));
  }
}
