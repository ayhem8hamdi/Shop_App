import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/item_screen_icon.dart';
import 'package:shopp_app/constants.dart';

class ProductCratWidgt extends StatelessWidget {
  const ProductCratWidgt({super.key});

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
              Image.asset(
                'Assets/Images/6.png',
                width: 86,
                height: 86,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, bottom: 6),
                    child: Text(
                      'Item Title',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Text(
                      '20\$',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 7, top: 4),
                    child: Icon(
                      size: 28,
                      Icons.disabled_by_default,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ItemScreenIcon(icon: Icons.remove),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '01',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ItemScreenIcon(icon: Icons.add),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
