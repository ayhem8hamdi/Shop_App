import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_item_cubit.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_items_cubit_states.dart';
import 'package:shopp_app/Widgets/category_item_builder.dart';
import 'package:shopp_app/Widgets/custom_grid_builder.dart';
import 'package:shopp_app/Widgets/home_body_headers.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<LoadingItemCubit>(context).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingItemCubit, LoadingItemsCubitStates>(
      builder: (context, state) {
        if (state is ItemLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ItemLoaded) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeBodyHeaders(text: 'Category'),
                const SizedBox(height: 10),
                SizedBox(
                  height: 101,
                  child: CustomListViewBuilder(
                    type: 'cat',
                    cat: state.cat,
                  ),
                ),
                const SizedBox(height: 17),
                const HomeBodyHeaders(text: 'Popular'),
                const SizedBox(height: 10),
                SizedBox(
                  height: 125,
                  child: CustomListViewBuilder(
                    type: 'pop',
                    cat: state.cat,
                  ),
                ),
                const SizedBox(height: 17),
                const HomeBodyHeaders(text: 'Top'),
                CustomGridBuilder(
                  cat: state.cat,
                ),
              ],
            ),
          );
        } else if (state is ItemError) {
          return Center(
            child: Text(
              state.error,
              maxLines: 2,
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
