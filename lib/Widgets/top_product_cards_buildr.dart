import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/product_card_widgt.dart';

class TopProductCartBuildr extends StatelessWidget {
  const TopProductCartBuildr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) => const ProductCratWidgt(),
      itemCount: 4,
    );
  }
}
