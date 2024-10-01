class Category {
  final String title;
  final String image;
  int? stock;
  final double price;
  Category(
      {required this.title,
      required this.image,
      this.stock = 120,
      required this.price});
}
