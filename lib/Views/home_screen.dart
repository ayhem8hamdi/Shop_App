import 'package:flutter/material.dart';
import 'package:shopp_app/Widgets/bottom_cart_sheet.dart';

import 'package:shopp_app/Widgets/custom_appbar.dart';
import 'package:shopp_app/Widgets/custom_search_bar.dart';
import 'package:shopp_app/Widgets/home_body.dart';
import 'package:shopp_app/Widgets/home_screen_titles.dart';
import 'package:shopp_app/constants.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

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
              CustomAppBar(
                onTap: () {
                  showSlidingBottomSheet(context,
                      builder: (context) => SlidingSheetDialog(
                            elevation: 8,
                            cornerRadius: 16,
                            builder: (context, state) => BottomCartSheet(),
                          ));
                },
              ),
              const HomeHeaders(),
              const SizedBox(
                height: 18,
              ),
              const CustomSearchBar(),
              const SizedBox(
                height: 26,
              ),
              const HomeBody(),
            ],
          ),
        ),
      ),
    );
  }
}
