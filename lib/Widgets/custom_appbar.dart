import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopp_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: kPrimaryColor,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [BoxShadow(color: Colors.white)]),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.cart,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
