import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_cubit.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_state.dart';
import 'package:shopp_app/Models/card.dart';
import 'package:shopp_app/Widgets/custom_elevatedbutton.dart';
import 'package:shopp_app/Widgets/shopping_fee_facture.dart';
import 'package:shopp_app/Widgets/top_product_cards_buildr.dart';
import 'package:shopp_app/constants.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cart> cards =
        BlocProvider.of<AddToCardCubit>(context).selectedProducts;
    return BlocBuilder<DeleteItemFromCardCubitCubit,
        DeleteItemFromCardCubitState>(
      builder: (context, state) {
        return Material(
          child: cards.isEmpty
              ? Container(
                  height: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  child: const Center(
                    child: Text(
                      'No products are chosen for now. Try to get what you need.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                )
              : BlocBuilder<DeleteItemFromCardCubitCubit,
                  DeleteItemFromCardCubitState>(
                  builder: (context, state) {
                    return const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TopProductCartBuildr(),
                          SoppingFee(),
                          CheckOutWidget()
                        ]);
                  },
                ),
        );
      },
    );
  }
}

class CheckOutWidget extends StatelessWidget {
  const CheckOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 8,
                spreadRadius: 1)
          ]),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 8),
              child: BlocBuilder<DeleteItemFromCardCubitCubit,
                  DeleteItemFromCardCubitState>(
                builder: (context, state) {
                  double val =
                      BlocProvider.of<AddToCardCubit>(context).getTotalPrice() +
                          7;
                  return Text(
                    '${val % 1 != 0 ? val.toString() : val.toInt()} DT',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                        inherit: false),
                  );
                },
              )),
          const CustomElevatedButton(
            text: 'Check Out',
            raduis: 30,
            padding: 12,
          )
        ],
      ),
    );
  }
}
