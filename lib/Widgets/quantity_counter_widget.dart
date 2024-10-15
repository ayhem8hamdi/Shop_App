import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit.dart';

import 'package:shopp_app/Methods/scaffold_messenger.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';

class QuantityCounterWidget extends StatefulWidget {
  const QuantityCounterWidget(
      {super.key, required this.color, required this.cat});

  final Color color;
  final Category cat;

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  int counter = 0;

  void add() {
    if (counter < widget.cat.stock) {
      setState(() {
        counter++;
      });
      BlocProvider.of<UpdateItemCubit>(context).counter = counter;
    } else {
      scafMess(context, 'You\'ve reached the max quantity');
    }
  }

  void minus() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
      BlocProvider.of<UpdateItemCubit>(context).counter = counter;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToCardCubit, AddToCardStates>(
      listener: (context, state) {
        if (state is AddtoCardSucces) {
          setState(() {
            counter = 0;
          });
          BlocProvider.of<UpdateItemCubit>(context).counter = 0;
        }
      },
      child: Row(
        children: [
          ItemScreenIcon(
            icon: Icons.remove,
            onTap: counter > 0 ? minus : null,
            isEnabled: counter > 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildCounterText(),
          ),
          ItemScreenIcon(
            icon: Icons.add,
            onTap: counter < widget.cat.stock ? add : null,
            isEnabled: counter < widget.cat.stock,
          ),
        ],
      ),
    );
  }

  Widget _buildCounterText() {
    return Text(
      counter < 10 && counter != 0 ? '0$counter' : '$counter',
      style: TextStyle(
        fontSize: 19,
        color: widget.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
