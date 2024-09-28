import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/favourit_star_icon.dart';

class FavouritAndReviewSection extends StatelessWidget {
  const FavouritAndReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StarIcon(),
        Text(
          '4.8',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        SizedBox(width: 8),
        Text(
          '(457 reviews)',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ],
    );
  }
}
