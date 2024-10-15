import 'package:shopp_app/Models/category.dart';

class SearchListStates {}

class SarchListInitial extends SearchListStates {}

class SarchListFiltred extends SearchListStates {
  final List<Category> filtredNames;
  SarchListFiltred(this.filtredNames);
}
