import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_state.dart';
import 'package:shopp_app/Models/card.dart';

class DeleteItemFromCardCubitCubit extends Cubit<DeleteItemFromCardCubitState> {
  DeleteItemFromCardCubitCubit() : super(DeleteItemFromCardCubitInitial());
  void deleteFromCard({required List<Cart> cart, required Cart cart1}) {
    emit(DeleteItemFromCardCubitLoading());
    cart.remove(cart1);
    emit(DeleteItemFromCardsucces());
  }
}
