import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_items_cubit_states.dart';
import 'package:shopp_app/Helper/get_from_fire_base.dart';
import 'package:shopp_app/Models/category.dart';

class LoadingItemCubit extends Cubit<LoadingItemsCubitStates> {
  LoadingItemCubit() : super(ItemInitial());

  void fetchData() async {
    try {
      emit(ItemLoading());

      List<Category> categories =
          await getProducts(collectionName: 'ProductsItems');

      emit(ItemLoaded(categories));
    } catch (e) {
      emit(ItemError(e.toString()));
    }
  }
}
