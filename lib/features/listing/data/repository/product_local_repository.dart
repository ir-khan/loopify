import 'dart:developer';

import 'package:loopify/features/listing/data/data_source/product_local_data_source.dart';
import 'package:loopify/features/listing/data/mapper/product_mapper.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/data/repository/product_repository.dart';

class ProductLocalRepository implements ProductRepository {
  final ProductLocalDataSource _productLocalDataSource;

  ProductLocalRepository(this._productLocalDataSource);

  @override
  Future<void> createProduct(Product product) async {
    try {
      await _productLocalDataSource.createProduct(product.toCompanion());
    } catch (e) {
      log('Product Local Repository: $e');
    }
  }

  @override
  Future<void> deleteProductById(int id) async {
    try {
      await _productLocalDataSource.deleteProductById(id);
    } catch (e) {
      log('Product Local Repository: $e');
    }
  }

  @override
  Future<List<Product>> getAllProducts() async {
    try {
      final products = await _productLocalDataSource.getAllProducts();
      return products.map((p) => p.toProduct()).toList();
    } catch (e) {
      log('Product Local Repository: $e');
      return [];
    }
  }

  @override
  Future<Product?> getProductById(int id) async {
    try {
      final product = await _productLocalDataSource.getProductById(id);
      if (product == null) return null;
      return product.toProduct();
    } catch (e) {
      log('Product Local Repository: $e');
      return null;
    }
  }

  @override
  Future<void> updateProduct(Product product) async {
    try {
      await _productLocalDataSource.updateProduct(product.toCompanion());
    } catch (e) {
      log('Product Local Repository: $e');
    }
  }
}
