import 'package:shopp_app/Models/category.dart';

abstract class LoadingItemsCubitStates {}

class ItemInitial extends LoadingItemsCubitStates {}

class ItemError extends LoadingItemsCubitStates {}

class ItemLoaded extends LoadingItemsCubitStates {
  final List<Category> cat;
  ItemLoaded(this.cat);
}

class ItemLoading extends LoadingItemsCubitStates {}
