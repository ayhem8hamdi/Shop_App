import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_cubit.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_state.dart';
import 'package:shopp_app/Widgets/bottom_cart_sheet.dart';
import 'package:shopp_app/Widgets/custom_badge.dart';
import 'package:shopp_app/constants.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          GestureDetector(
            onTap: () => showSlidingBottomSheet(
              context,
              builder: (context) => SlidingSheetDialog(
                elevation: 8,
                cornerRadius: 16,
                builder: (context, state) {
                  return BlocBuilder<DeleteItemFromCardCubitCubit,
                      DeleteItemFromCardCubitState>(
                    builder: (context, state) {
                      return const BottomCartSheet();
                    },
                  );
                },
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: CustomBadge(
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
