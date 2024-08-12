import '../entity/product_entity.dart';
import '../../data/repository/product_repository.dart';

class GetProduct {
  final ProductRepository repository;

  GetProduct(this.repository);

  Product call() {
    return repository.getProduct();
  }
}
