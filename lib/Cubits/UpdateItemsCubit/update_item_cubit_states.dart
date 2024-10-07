abstract class UpdateItemCubitStates {}

class UpdateItemInitial extends UpdateItemCubitStates {}

class ItemUpdateError extends UpdateItemCubitStates {
  final String error;
  ItemUpdateError(this.error);
}

class ItemUpdated extends UpdateItemCubitStates {
  final int value;

  ItemUpdated(this.value);
}

class ItemUpdateLoading extends UpdateItemCubitStates {}
