import 'package:flutter/material.dart';

class ItemScreenImage extends StatelessWidget {
  const ItemScreenImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
