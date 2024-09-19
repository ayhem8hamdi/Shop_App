import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/custom_category_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) =>
          const CustomCategory(image: 'Assets/Images/5.png'),
    );
  }
}
