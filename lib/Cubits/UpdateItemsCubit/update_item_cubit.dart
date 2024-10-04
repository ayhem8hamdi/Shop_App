import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_items_cubit_states.dart';
import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit_states.dart';
import 'package:shopp_app/Helper/get_from_fire_base.dart';
import 'package:shopp_app/Helper/update_from_fire_base.dart';
import 'package:shopp_app/Models/category.dart';

class UpdateItemCubit extends Cubit<UpdateItemCubitStates> {
  UpdateItemCubit() : super(UpdateItemInitial());

  void updateData({required Category cat, required int quantiteAcheter}) async {
    try {
      emit(ItemUpdateLoading());

      updateUserData(cat: cat, quantiteAcheter: quantiteAcheter);
      emit(ItemUpdated());
    } catch (e) {
      emit(ItemUpdateError(e.toString()));
    }
  }
}
