import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:shopp_app/Widgets/custom_appbar.dart';
import 'package:shopp_app/Widgets/custom_search_bar.dart';
import 'package:shopp_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Container(
                padding: const EdgeInsets.only(left: 12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    Text(
                      'What do you want to buy ?',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    CustomSearchBar()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
