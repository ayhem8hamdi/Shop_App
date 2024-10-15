class SearchListStates {}

class SarchListInitial extends SearchListStates {}

class SarchListFiltred extends SearchListStates {
  final List<String> filtredNames;
  SarchListFiltred(this.filtredNames);
}
