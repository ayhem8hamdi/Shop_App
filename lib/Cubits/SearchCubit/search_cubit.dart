import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/SearchCubit/search_cubit_states.dart';
import 'package:shopp_app/Models/category.dart';

class SearchCubit extends Cubit<SearchListStates> {
  SearchCubit() : super(SarchListInitial());

  void filter(List<Category> categories, String searchTerm) {
    if (searchTerm.isEmpty) {
      emit(SarchListInitial());
      return;
    }

    final filteredTitles = categories.where((category) {
      return category.title.toLowerCase().contains(searchTerm.toLowerCase());
    }).toList();

    emit(SarchListFiltred(filteredTitles));
  }
}
