import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:loopify/core/database/app_database.dart' as drift;
import 'package:loopify/features/home/data/data.dart';
import 'package:loopify/features/listing/data/data.dart';
import 'package:loopify/features/listing/data/model/ad_spend_mode/ad_spend_mode.dart';
import 'package:loopify/features/listing/data/model/product/product.dart'
    as freezed_product;

extension ProductExtensions on freezed_product.Product {
  drift.ProductsCompanion toCompanion() {
    return drift.ProductsCompanion(
      id: id == null ? const Value.absent() : Value(id!),
      title: Value(title),
      description: Value(description),
      price: Value(price),
      isNegotiable: Value(isNegotiable),
      isFavorite: Value(isFavorite),
      condition: Value(condition.dbValue),
      category: Value(category.id),
      location: Value(location.id),
      material: Value(material.dbValue),
      color: Value(color),
      imagePaths: Value(imagePaths.join(',')),
      note: Value(note),
      adSpend: Value(adSpend != null ? jsonEncode(adSpend!.toJson()) : null),
    );
  }
}

extension ProductsDataExtensions on drift.Product {
  freezed_product.Product toProduct() {
    return freezed_product.Product(
      id: id,
      title: title,
      description: description,
      price: price,
      isNegotiable: isNegotiable,
      isFavorite: isFavorite,
      condition: freezed_product.ConditionX.fromDb(condition),
      category: categories.firstWhere((c) => c.id == category),
      location: locations.firstWhere((l) => l.id == location),
      material: freezed_product.MaterialTypeX.fromDb(material),
      color: color,
      imagePaths: imagePaths.split(','),
      note: note,
      adSpend: adSpend != null
          ? AdSpendMode.fromJson(jsonDecode(adSpend!))
          : null,
    );
  }
}
