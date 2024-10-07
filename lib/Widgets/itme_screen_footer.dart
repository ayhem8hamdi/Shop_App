import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              '\$ ${cat.price % 1 != 0 ? cat.price.toString() : cat.price.toInt()}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: kPrimaryColor,
              ),
            ),
          ),
          AddCart(
            onTap: () {
              BlocProvider.of<UpdateItemCubit>(context).updateData(
                cat: cat,
              );
              BlocProvider.of<LoadingItemCubit>(context).fetchData();
            },
          )
        ],
      ),
    );
  }
}
