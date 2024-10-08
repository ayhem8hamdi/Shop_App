import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';
import 'package:shopp_app/constants.dart';

class AddCart extends StatelessWidget {
  const AddCart({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddToCardCubit, AddToCardStates>(
      builder: (context, state) {
        print(state);
        return IconButton(
          onPressed: onTap,
          icon: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kPrimaryColor,
            ),
            child: state is AddToCardLoading
                ? Center(
                    child: Container(
                        height: 32,
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        )))
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Icon(
                          size: 30,
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Add To Cart',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
          ),
        );
      },
    );
  }
}
