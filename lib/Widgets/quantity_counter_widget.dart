import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit_states.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';

class QuantityCounterWidget extends StatefulWidget {
  const QuantityCounterWidget({super.key, required this.color});

  final Color color;

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  int counter = 0;

  void add() {
    setState(() {
      counter++;
    });
    BlocProvider.of<UpdateItemCubit>(context).counter = counter;
  }

  void minus() {
    setState(() {
      if (counter > 0) {
        counter--;
        // Update the quantity in the cubit
      }
    });
    BlocProvider.of<UpdateItemCubit>(context).counter = counter;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ItemScreenIcon(
          icon: Icons.remove,
          onTap: minus,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: BlocListener<UpdateItemCubit, UpdateItemCubitStates>(
            listener: (context, state) {
              if (state is ItemUpdated) {
                setState(() {
                  counter = 0;
                });
                BlocProvider.of<UpdateItemCubit>(context).counter = 0;
              }
            },
            child: Text(
              counter < 10 && counter != 0 ? '0$counter' : '$counter',
              style: TextStyle(
                fontSize: 19,
                color: widget.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ItemScreenIcon(
          icon: Icons.add,
          onTap: add,
        ),
      ],
    );
  }
}
