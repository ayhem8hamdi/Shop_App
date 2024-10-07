import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';

import 'package:shopp_app/Widgets/product_card_widgt.dart';

class TopProductCartBuildr extends StatelessWidget {
  const TopProductCartBuildr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cards = BlocProvider.of<AddToCardCubit>(context).selectedProducts;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: cards.isEmpty
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: const Text(
                'No products are chosen for now. Try to get what you need.',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) => ProductCratWidgt(cat: cards[i]),
              itemCount: cards.length, // Adjusted to show all selected products
            ),
    );
  }
}
