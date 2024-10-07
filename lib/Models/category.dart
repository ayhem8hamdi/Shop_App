import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  String id;
  String title;
  String image;
  int stock;
  double price;

  Category({
    required this.id,
    required this.title,
    required this.image,
    required this.stock,
    required this.price,
  });

  factory Category.fetchFireBaseData(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Category(
      id: doc.id,
      title: data['title'] ?? '',
      image: data['image'] ?? '',
      stock: data['stock'] ?? 0,
      price: (data['price'] is int)
          ? (data['price'] as int).toDouble()
          : (data['price'] as double),
    );
  }
}
