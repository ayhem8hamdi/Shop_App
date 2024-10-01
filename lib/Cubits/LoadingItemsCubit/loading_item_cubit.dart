import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/LoadingItemsCubit/loading_items_cubit_states.dart';

class LoadingItemCubit extends Cubit<LoadingItemsCubitStates> {
  LoadingItemCubit() : super(ItemInitial());
}
