import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:loopify/core/database/tables/product.dart';
import 'package:loopify/features/listing/data/data.dart';
import 'package:loopify/features/listing/data/mapper/product_mapper.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      m.createAll();
    },
    beforeOpen: (details) async {
      if (details.wasCreated) {
        await _seedDummyProducts();
      }
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'loopify',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  Future<void> _seedDummyProducts() async {
    for (final product in dummyProducts) {
      await into(
        products,
      ).insert(product.toCompanion(), mode: InsertMode.insertOrIgnore);
    }
  }
}
