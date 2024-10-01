import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  final String title;
  final String id;
  final String image;
  int? stock;
  final double price;
  Category(
      {required this.id,
      required this.title,
      required this.image,
      this.stock = 120,
      required this.price});
  factory Category.fetchFireBaseData(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Category(
        id: doc.id,
        image: data['image'],
        price: data['price'],
        title: data['title'],
        stock: data['stock']);
  }
}
