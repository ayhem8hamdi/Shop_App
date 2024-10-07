import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:shopp_app/Models/category.dart';

Future<void> updateUserData(
    {required Category cat, required int quantiteAcheter}) async {
  CollectionReference users =
      FirebaseFirestore.instance.collection('ProductsItems');

  try {
    await users.doc(cat.id).update({'stock': cat.stock - quantiteAcheter});
  } catch (e) {
    print("Error updating document: $e");
  }
}
