import '../../domain/entity/product_entity.dart';

class ProductRepository {
  // Mock data
  Product getProduct() {
    return Product(
      name: "Beauty Set by Irvie",
      resellerPrice: "Rp142.400",
      customerPrice: "Rp178.000",
      commission: "Rp35.600",
      stock: 99,
      images: [
        'assets/product.png',
        'assets/product2.png',
        'assets/product3.png',
        'assets/product4.png',
      ],
    );
  }
}
