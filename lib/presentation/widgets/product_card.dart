import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:produk/presentation/widgets/popup_share.dart';
import '../../data/repository/product_repository.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/usecase/get_product.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key});

  final GetProduct getProduct = GetProduct(ProductRepository());
  late Product product = getProduct();

  @override
  Widget build(BuildContext context) {
    String productName = product.name.toString();
    String productImages = product.images[0].toString();
    String resellerPrice = product.resellerPrice.toString();
    int stock = product.stock;

    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1.0,
                  child: Image.asset(
                    productImages,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 8,
                  bottom: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue[500]?.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "30% Komisi",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Harga reseller",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      resellerPrice,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icon/stock.svg'),
                        const SizedBox(width: 4),
                        Text(
                          "$stock+ pcs",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                ElevatedButton(
                  onPressed: () {
                    showShareModal(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    minimumSize: const Size(double.infinity, 36),
                  ),
                  child: const Text("Bagikan Produk"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
