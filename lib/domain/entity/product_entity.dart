class Product {
  final String name;
  final String resellerPrice;
  final String customerPrice;
  final String commission;
  final int stock;
  final List<String> images;

  Product({
    required this.name,
    required this.resellerPrice,
    required this.customerPrice,
    required this.commission,
    required this.stock,
    required this.images,
  });
}
