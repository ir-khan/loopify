import 'package:loopify/core/database/app_database.dart';

class ProductLocalDataSource {
  final AppDatabase _appDatabase;

  ProductLocalDataSource(this._appDatabase);

  Future<void> createProduct(ProductsCompanion product) async {
    try {
      await _appDatabase.into(_appDatabase.products).insert(product);
    } catch (e) {
      print('Product Local Data Source: $e');
    }
  }

  Future<List<Product>> getAllProducts() async {
    try {
      return await _appDatabase.select(_appDatabase.products).get();
    } catch (e) {
      print('Product Local Data Source: $e');
      return [];
    }
  }

  Future<int> updateProduct(ProductsCompanion product) async {
    try {
      return await (_appDatabase.update(
        _appDatabase.products,
      )..where((p) => p.id.equals(product.id.value))).write(product);
    } catch (e) {
      print('Product Local Data Source: $e');
      return 0;
    }
  }

  Future<Product?> getProductById(int id) async {
    try {
      return await (_appDatabase.select(
        _appDatabase.products,
      )..where((p) => p.id.equals(id))).getSingle();
    } catch (e) {
      print('Product Local Data Source: $e');
      return null;
    }
  }

  Future<int> deleteProductById(int id) async {
    try {
      return await (_appDatabase.delete(
        _appDatabase.products,
      )..where((p) => p.id.equals(id))).go();
    } catch (e) {
      print('Product Local Data Source: $e');
      return 0;
    }
  }
}
