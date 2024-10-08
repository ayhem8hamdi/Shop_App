import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Badge(
      offset: const Offset(7, -5),
      alignment: Alignment.topRight,
      smallSize: 18,
      largeSize: 24,
      label: BlocBuilder<AddToCardCubit, AddToCardStates>(
        builder: (context, state) {
          return Text(
            '${BlocProvider.of<AddToCardCubit>(context).selectedProducts.length}',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
      isLabelVisible: true,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      child: Container(
        padding: const EdgeInsets.all(4),
        child: const Icon(
          CupertinoIcons.cart,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
