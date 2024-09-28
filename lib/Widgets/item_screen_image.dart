import 'package:flutter/material.dart';

class ItemScreenImage extends StatelessWidget {
  const ItemScreenImage(
      {super.key, required this.image, this.width, this.height});
  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 65, bottom: 25),
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
        width: width,
        height: height,
      ),
    );
  }
}
