import 'package:flutter/material.dart';
import 'package:shopp_app/constants.dart';

class SoppingFee extends StatelessWidget {
  const SoppingFee({super.key});

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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, bottom: 6),
                    child: Text(
                      'Delevery fee:',
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
                      'sub-Total:',
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
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '20\$',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '10\$',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          inherit: false),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
