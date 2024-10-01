import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopp_app/Models/category.dart';

Future<List<Category>> getProducts({required String collectionName}) async {
  try {
    final CollectionReference productsRef =
        FirebaseFirestore.instance.collection(collectionName);
    List<Category> products = [];
    QuerySnapshot allProducts = await productsRef.get();

    for (var elt in allProducts.docs) {
      Category cat = Category.fetchFireBaseData(elt);
      products.add(cat);
    }

    return products;
  } catch (e) {
    print('Error fetching products: $e');
    return [];
  }
}
