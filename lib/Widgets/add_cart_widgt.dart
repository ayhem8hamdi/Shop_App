import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit_states.dart';
import 'package:shopp_app/constants.dart';

class AddCart extends StatelessWidget {
  const AddCart({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateItemCubit, UpdateItemCubitStates>(
      builder: (context, state) {
        bool isLoading = state is ItemUpdateLoading;

        return Stack(
          children: [
            IconButton(
              onPressed: isLoading ? null : onTap,
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isLoading)
                      const SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    else ...[
                      const Icon(
                        size: 30,
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Add To Cart',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
            if (isLoading)
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: kPrimaryColor),
                    child: Text('updating'),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
