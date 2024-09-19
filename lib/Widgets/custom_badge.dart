import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      alignment: Alignment.topRight,
      smallSize: 18,
      largeSize: 24,
      label: const Text(
        '3',
        style: TextStyle(
          fontWeight: FontWeight.bold, // Make the text bold
        ),
      ),
      isLabelVisible: true,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(6),
          child: const Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
