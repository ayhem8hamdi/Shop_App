import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_item_cubit.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_items_cubit_states.dart';
import 'package:shopp_app/Cubits/SearchCubit/search_cubit.dart';
import 'package:shopp_app/Cubits/SearchCubit/search_cubit_states.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/Widgets/category_item_builder.dart';
import 'package:shopp_app/Widgets/custom_grid_builder.dart';
import 'package:shopp_app/Widgets/filtred_name_list_builder.dart';
import 'package:shopp_app/Widgets/home_body_headers.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
          return _buildLoadedContent(state);
        } else if (state is ItemError) {
          return _buildErrorContent(state);
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildLoadedContent(ItemLoaded state) {
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
      child: BlocBuilder<SearchCubit, SearchListStates>(
        builder: (context, searchState) {
          if (searchState is SarchListFiltred) {
            if (searchState.filtredNames.isEmpty) {
              return SizedBox(
                  height: 530,
                  child: Center(
                    child: Text('No results found',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 27)),
                  ));
            } else {
              return FilteredNameListBuilder(names: searchState.filtredNames);
            }
          } else {
            return _buildDefaultContent(state);
          }
        },
      ),
    );
  }

  Widget _buildDefaultContent(ItemLoaded state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeBodyHeaders(text: 'Category'),
        const SizedBox(height: 10),
        _buildCustomListView('cat', state.cat, 101),
        const SizedBox(height: 17),
        const HomeBodyHeaders(text: 'Popular'),
        const SizedBox(height: 10),
        _buildCustomListView('pop', state.cat, 125),
        const SizedBox(height: 17),
        const HomeBodyHeaders(text: 'Top'),
        CustomGridBuilder(cat: state.cat),
      ],
    );
  }

  Widget _buildCustomListView(String type, List<Category> cat, double height) {
    return SizedBox(
      height: height,
      child: CustomListViewBuilder(type: type, cat: cat),
    );
  }

  Widget _buildErrorContent(ItemError state) {
    return Center(
      child: Text(
        state.error,
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
