import 'package:flutter/material.dart';
import 'package:shopp_app/Methods/scaffold_messenger.dart';

class StarIcon extends StatefulWidget {
  const StarIcon({
    super.key,
  });

  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          isPressed = !isPressed;
          setState(() {});
          isPressed == true
              ? scafMess(context, 'Added to favourite')
              : scafMess(context, 'Removed');
        },
        icon: isPressed == false
            ? const Icon(
                Icons.star_border,
                color: Colors.white,
                size: 32,
              )
            : const Icon(
                Icons.star,
                color: Colors.orange,
                size: 32,
              ));
  }
}
