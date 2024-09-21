import 'package:flutter/material.dart';
import 'package:shopp_app/constants.dart';

class HomeBodyHeaders extends StatelessWidget {
  const HomeBodyHeaders(
      {super.key, required this.text, this.text1 = 'See all'});

  final String text;
  final String? text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'See all',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
