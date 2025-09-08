import 'package:drift/drift.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  RealColumn get price => real()();
  BoolColumn get isNegotiable => boolean().withDefault(Constant(false))();
  BoolColumn get isFavorite => boolean().withDefault(Constant(false))();
  TextColumn get condition => text()();
  IntColumn get category => integer()();
  IntColumn get location => integer()();
  TextColumn get material => text()();
  TextColumn get color => text()();
  TextColumn get imagePaths => text()();
  TextColumn get note => text().nullable()();
  TextColumn get adSpend => text().nullable()();
}
