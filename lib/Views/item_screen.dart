import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_cubit.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/delevery_time_widget.dart';
import 'package:shopp_app/Widgets/favourite_and_reviews_section.dart';
import 'package:shopp_app/Widgets/item_screen_image.dart';
import 'package:shopp_app/Widgets/itme_screen_footer.dart';
import 'package:shopp_app/Widgets/quantity_counter_widget.dart';
import 'package:shopp_app/constants.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  static String id = 'ItemScreen';

  @override
  Widget build(BuildContext context) {
    Category cat = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      body: BlocListener<AddToCardCubit, AddToCardStates>(
        listener: (context, state) {
          if (state is AddtoCardSucces) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Added To Cart Successfully!')),
            );
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemScreenImage(
                      image: cat.image, height: 230, width: double.infinity),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 30),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                cat.title,
                                style: const TextStyle(
                                  fontSize: 29,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            QuantityCounterWidget(
                                color: Colors.white, cat: cat),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Stock: ${cat.stock} items',
                          style: const TextStyle(
                              fontSize: 17, color: Colors.white70),
                        ),
                        const FavouritAndReviewSection(),
                        const SizedBox(height: 8),
                        const Text(
                          'Description:',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Bright, juicy, and packed with Vitamin C, our fresh oranges are the perfect balance of sweet and tangy flavor. Ideal for snacking, juicing, or adding zest to your favorite recipes. Hand-picked to ensure the highest quality and ripeness. Elevate your daily fruit intake with nature's citrus powerhouse!",
                          style: TextStyle(
                              fontSize: 20, height: 1.6, color: Colors.white),
                        ),
                        const SizedBox(height: 15),
                        const DeleveryTimeWidget(),
                      ],
                    ),
                  ),
                  ItmeScreenFooter(cat: cat),
                ],
              ),
            ),
            BlocBuilder<AddToCardCubit, AddToCardStates>(
              builder: (context, state) {
                if (state is AddToCardLoading) {
                  return Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(child: SizedBox.shrink()),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
