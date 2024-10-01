import 'package:flutter/cupertino.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/top_cat_item.dart';

class CustomGridBuilder extends StatelessWidget {
  const CustomGridBuilder({super.key, required this.cat});
  final List<Category> cat;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: cat.length,
      itemBuilder: (context, index) => TopCatItem(cat: cat[index]),
    );
  }
}
