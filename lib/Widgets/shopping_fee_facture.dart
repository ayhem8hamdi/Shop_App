import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_cubit.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_state.dart';
import 'package:shopp_app/constants.dart';

class SoppingFee extends StatelessWidget {
  const SoppingFee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                    spreadRadius: 1)
              ]),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, bottom: 6),
                    child: Text(
                      'Delevery fee:',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Text(
                      'sub-Total:',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '7 DT',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    BlocBuilder<DeleteItemFromCardCubitCubit,
                        DeleteItemFromCardCubitState>(
                      builder: (context, state) {
                        double val = BlocProvider.of<AddToCardCubit>(context)
                            .getTotalPrice();
                        return Text(
                          '${val % 1 != 0 ? val.toString() : val.toInt()} DT',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              inherit: false),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
