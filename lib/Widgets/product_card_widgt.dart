import 'package:flutter/material.dart';

import 'package:shopp_app/constants.dart';
import 'package:shopp_app/Models/card.dart';

class ProductCratWidgt extends StatelessWidget {
  const ProductCratWidgt({super.key, required this.cat});
  final Cart cat;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                    spreadRadius: 1)
              ]),
          padding: const EdgeInsets.symmetric(vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Image.asset(
                  cat.image,
                  width: 86,
                  height: 86,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, bottom: 6),
                    child: Text(
                      cat.title,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Text(
                          ' ${cat.price % 1 != 0 ? cat.price.toString() : cat.price.toInt()} DT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kPrimaryColor,
                          )))
                ],
              ),
              const Spacer(),
              ProductCardTrailing(cat: cat)
            ],
          ),
        )
      ],
    );
  }
}

class ProductCardTrailing extends StatelessWidget {
  const ProductCardTrailing({super.key, required this.cat});
  final Cart cat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7, top: 4),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 28,
              Icons.disabled_by_default,
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 7, top: 8),
          child: Text(
            '${cat.qte} items',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
