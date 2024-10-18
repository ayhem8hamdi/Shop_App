import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_item_cubit.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/add_cart_widgt.dart';
import 'package:shopp_app/constants.dart';

class ItmeScreenFooter extends StatelessWidget {
  const ItmeScreenFooter({super.key, required this.cat});

  final Category cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '${cat.price % 1 != 0 ? cat.price.toString() : cat.price.toInt()} DT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: kPrimaryColor,
              ),
            ),
          ),
          AddCart(
            cat: cat,
            onTap: () {
              BlocProvider.of<AddToCardCubit>(context).cardUpdate(
                  cat: cat,
                  nbr: BlocProvider.of<UpdateItemCubit>(context).counter);
              BlocProvider.of<LoadingItemCubit>(context).fetchData();
            },
          )
        ],
      ),
    );
  }
}
