import 'package:flutter/material.dart';

class PopularCatgoryItem extends StatelessWidget {
  const PopularCatgoryItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 6, spreadRadius: 1)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
        child: Image.asset(
          image,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
