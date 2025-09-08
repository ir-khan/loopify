import 'package:loopify/features/listing/data/model/product/product.dart';

abstract class ProductRepository {
  Future<void> createProduct(Product product);
  Future<List<Product>> getAllProducts();
  Future<Product?> getProductById(int id);
  Future<void> updateProduct(Product product);
  Future<void> deleteProductById(int id);
}
