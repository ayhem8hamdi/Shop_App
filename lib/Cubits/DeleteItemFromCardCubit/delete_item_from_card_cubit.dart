import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/DeleteItemFromCardCubit/delete_item_from_card_state.dart';

class DeleteItemFromCardCubitCubit extends Cubit<DeleteItemFromCardCubitState> {
  DeleteItemFromCardCubitCubit() : super(DeleteItemFromCardCubitInitial());
}
