import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit.dart';

import 'package:shopp_app/Methods/scaffold_messenger.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';
import 'package:shopp_app/Models/card.dart';

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

  int _getQuantityInCart() {
    final cubit = BlocProvider.of<AddToCardCubit>(context);
    final existingProduct = cubit.selectedProducts.firstWhere(
      (product) => product.title == widget.cat.title,
      orElse: () => Cart(image: '', title: '', qte: 0, price: 0),
    );
    return existingProduct.qte;
  }

  void add() {
    int totalQuantityInCart = _getQuantityInCart() + counter;

    if (totalQuantityInCart < widget.cat.stock) {
      setState(() {
        counter++;
      });
      BlocProvider.of<UpdateItemCubit>(context).counter = counter;
    } else {
      scafMess(context, 'You\'ve reached the max quantity in stock');
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
            onTap: _canAddMore() ? add : null,
            isEnabled: _canAddMore(),
          ),
        ],
      ),
    );
  }

  bool _canAddMore() {
    int totalQuantityInCart = _getQuantityInCart() + counter;
    return totalQuantityInCart < widget.cat.stock;
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
