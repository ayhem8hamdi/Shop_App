import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/SearchCubit/search_cubit_states.dart';

class SearchCubit extends Cubit<SearchListStates> {
  SearchCubit() : super(SarchListInitial());
}
