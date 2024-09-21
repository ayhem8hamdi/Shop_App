import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      offset: const Offset(7, -5),
      alignment: Alignment.topRight,
      smallSize: 18,
      largeSize: 24,
      label: const Text(
        '7',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold, // Make the text bold
        ),
      ),
      isLabelVisible: true,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(4),
          child: const Icon(
            CupertinoIcons.cart,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
