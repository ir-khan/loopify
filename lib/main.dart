import 'package:flutter/material.dart';
import 'package:loopify/app.dart';
import 'package:loopify/core/database/app_database.dart';
import 'package:loopify/features/listing/data/data_source/product_local_data_source.dart';
import 'package:loopify/features/listing/data/repository/product_local_repository.dart';

late final ProductLocalRepository productLocalRepository;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  productLocalRepository = ProductLocalRepository(
    ProductLocalDataSource(AppDatabase()),
  );

  runApp(const MyApp());
}
