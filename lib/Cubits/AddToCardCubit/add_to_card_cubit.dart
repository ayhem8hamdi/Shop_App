import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopp_app/Cubits/AddToCardCubit/add_to_card_states.dart';

import 'package:shopp_app/Models/card.dart';
import 'package:shopp_app/Models/category.dart';

class AddToCardCubit extends Cubit<AddToCardStates> {
  AddToCardCubit() : super(AddToCardInitial());

  List<Cart> selectedProducts = [];

  void cardUpdate({required Category cat, required int nbr}) async {
    emit(AddToCardLoading());

    await Future.delayed(const Duration(seconds: 1));

    final existingProductIndex =
        selectedProducts.indexWhere((product) => product.title == cat.title);

    if (existingProductIndex != -1) {
      selectedProducts[existingProductIndex].qte += nbr;
      selectedProducts[existingProductIndex].price += nbr * cat.price;
    } else {
      Cart newProduct = Cart(
          image: cat.image, title: cat.title, qte: nbr, price: nbr * cat.price);
      selectedProducts.add(newProduct);
    }

    emit(AddtoCardSucces());
  }

  double getTotalPrice() {
    double totalPrice = 0;

    for (var product in selectedProducts) {
      totalPrice += product.price;
    }

    return totalPrice;
  }
}
