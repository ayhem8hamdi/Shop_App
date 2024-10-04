abstract class UpdateItemCubitStates {}

class UpdateItemInitial extends UpdateItemCubitStates {}

class ItemUpdateError extends UpdateItemCubitStates {
  final String error;
  ItemUpdateError(this.error);
}

class ItemUpdated extends UpdateItemCubitStates {}

class ItemUpdateLoading extends UpdateItemCubitStates {}

class ItemUpdatedWithStock extends UpdateItemCubitStates {
  final int updatedStock;

  ItemUpdatedWithStock(this.updatedStock);
}
