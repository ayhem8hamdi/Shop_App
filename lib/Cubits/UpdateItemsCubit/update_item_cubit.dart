import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopp_app/Cubits/UpdateItemsCubit/update_item_cubit_states.dart';

import 'package:shopp_app/Helper/update_from_fire_base.dart';
import 'package:shopp_app/Models/category.dart';

class UpdateItemCubit extends Cubit<UpdateItemCubitStates> {
  UpdateItemCubit() : super(UpdateItemInitial());

  int counter = 0;

  void updateData({required Category cat}) async {
    emit(ItemUpdateLoading());
    try {
      await updateUserData(cat: cat, quantiteAcheter: counter);

      emit(ItemUpdated(cat.stock - counter));
    } catch (e) {
      emit(ItemUpdateError(e.toString()));
    }
  }
}
