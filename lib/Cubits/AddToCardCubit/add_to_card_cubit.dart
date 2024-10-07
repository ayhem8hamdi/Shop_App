import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';
import 'package:shopp_app/Models/category.dart';

class AddToCardCubit extends Cubit<AddToCardStates> {
  AddToCardCubit() : super(AddToCardInitial());

  List<Category> selectedProducts = [];
  void cardUpdate() {}
}
