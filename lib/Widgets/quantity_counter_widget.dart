import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';

class QuantityCounterWidget extends StatefulWidget {
  const QuantityCounterWidget({super.key});

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

int counter = 0;

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  void add() {
    setState(() {
      counter++;
    });
  }

  void minus() {
    setState(() {
      counter > 0 ? counter-- : null;
    });
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
          child: Text(
            counter < 10 && counter != 0 ? '0$counter' : '$counter',
            style: const TextStyle(
                fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
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
