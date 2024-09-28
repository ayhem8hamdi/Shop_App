import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleveryTimeWidget extends StatelessWidget {
  const DeleveryTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Delivery Time:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Row(
            children: [
              Icon(
                CupertinoIcons.clock,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '20 minutes',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}
