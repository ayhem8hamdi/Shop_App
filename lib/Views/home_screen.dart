import 'package:flutter/material.dart';

import 'package:shopp_app/Widgets/custom_appbar.dart';
import 'package:shopp_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [CustomAppBar()],
          ),
        ),
      ),
    );
  }
}
