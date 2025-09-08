import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loopify/features/listing/data/model/ad_spend_mode/ad_spend_mode.dart';
import 'package:loopify/features/listing/data/model/category/category.dart';
import 'package:loopify/features/listing/data/model/location/location.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    int? id,
    required String title,
    required List<String> imagePaths,
    required String description,
    required double price,
    @Default(false) bool isNegotiable,
    @Default(false) bool isFavorite,
    required Condition condition,
    required Category category,
    required Location location,
    required MaterialType material,
    required String color,
    String? note,
    AdSpendMode? adSpend,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

@JsonEnum(alwaysCreate: true)
enum Condition {
  @JsonValue('new')
  new_,
  @JsonValue('used')
  used,
  @JsonValue('excellent')
  excellent,
  @JsonValue('refurbished')
  refurbished,
}

@JsonEnum(alwaysCreate: true)
enum MaterialType {
  @JsonValue('wood')
  wood,
  @JsonValue('metal')
  metal,
  @JsonValue('plastic')
  plastic,
  @JsonValue('leather')
  leather,
  @JsonValue('other')
  other,
}

extension ConditionX on Condition {
  String get label {
    switch (this) {
      case Condition.new_:
        return 'New';
      case Condition.used:
        return 'Used';
      case Condition.refurbished:
        return 'Refurbished';
      case Condition.excellent:
        return 'Excellent';
    }
  }

  String get dbValue {
    switch (this) {
      case Condition.new_:
        return 'new';
      case Condition.used:
        return 'used';
      case Condition.excellent:
        return 'excellent';
      case Condition.refurbished:
        return 'refurbished';
    }
  }

  static Condition fromDb(String value) {
    switch (value) {
      case 'new':
        return Condition.new_;
      case 'used':
        return Condition.used;
      case 'excellent':
        return Condition.excellent;
      case 'refurbished':
        return Condition.refurbished;
      default:
        throw Exception('Unknown Condition: $value');
    }
  }
}

extension MaterialTypeX on MaterialType {
  String get label {
    switch (this) {
      case MaterialType.wood:
        return 'Wood';
      case MaterialType.metal:
        return 'Metal';
      case MaterialType.plastic:
        return 'Plastic';
      case MaterialType.leather:
        return 'Leather';
      case MaterialType.other:
        return 'Other';
    }
  }

  String get dbValue {
    switch (this) {
      case MaterialType.wood:
        return 'wood';
      case MaterialType.metal:
        return 'metal';
      case MaterialType.plastic:
        return 'plastic';
      case MaterialType.leather:
        return 'leather';
      case MaterialType.other:
        return 'other';
    }
  }

  static MaterialType fromDb(String value) {
    switch (value) {
      case 'wood':
        return MaterialType.wood;
      case 'metal':
        return MaterialType.metal;
      case 'plastic':
        return MaterialType.plastic;
      case 'leather':
        return MaterialType.leather;
      case 'other':
        return MaterialType.other;
      default:
        throw Exception('Unknown MaterialType: $value');
    }
  }
}
