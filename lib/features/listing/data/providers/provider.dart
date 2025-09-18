import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loopify/core/database/app_database.dart' hide Product;
import 'package:loopify/features/listing/data/data_source/product_local_data_source.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/data/repository/product_local_repository.dart';
import 'package:loopify/features/listing/data/repository/product_repository.dart';

final productLocalDataSourceProvider = Provider<ProductLocalDataSource>((ref) {
  return ProductLocalDataSource(AppDatabase());
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final ds = ref.watch(productLocalDataSourceProvider);
  return ProductLocalRepository(ds);
});

class ProductNotifier extends AsyncNotifier<List<Product>> {
  late final ProductRepository _repository;

  @override
  Future<List<Product>> build() async {
    _repository = ref.watch(productRepositoryProvider);
    return _repository.getAllProducts();
  }

  Future<void> addProduct(Product product) async {
    state = const AsyncValue.loading();
    await _repository.createProduct(product);
    state = await AsyncValue.guard(() => _repository.getAllProducts());
  }

  Future<void> deleteProduct(int id) async {
    state = const AsyncValue.loading();
    await _repository.deleteProductById(id);
    state = await AsyncValue.guard(() => _repository.getAllProducts());
  }

  Future<void> updateProduct(Product product) async {
    state = const AsyncValue.loading();
    await _repository.updateProduct(product);
    state = await AsyncValue.guard(() => _repository.getAllProducts());
  }
}

final productNotifierProvider =
    AsyncNotifierProvider<ProductNotifier, List<Product>>(
      () => ProductNotifier(),
    );

final productByIdProvider =
    FutureProvider.family<Product?, int>((ref, id) async {
  final productsAsync = ref.watch(productNotifierProvider);

  if (productsAsync.hasValue) {
    final product = productsAsync.value!
        .where((p) => p.id == id)
        .cast<Product?>()
        .firstOrNull;
    if (product != null) return product;
  }

  final repo = ref.watch(productRepositoryProvider);
  return await repo.getProductById(id);
});