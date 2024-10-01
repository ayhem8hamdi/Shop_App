import 'package:flutter/cupertino.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/top_cat_item.dart';

class CustomGridBuilder extends StatelessWidget {
  const CustomGridBuilder({super.key});

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
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: list1.length,
      itemBuilder: (context, index) => TopCatItem(cat: list1[index]),
    );
  }
}
