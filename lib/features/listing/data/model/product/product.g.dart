// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String,
  imagePaths: (json['imagePaths'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  description: json['description'] as String,
  price: (json['price'] as num).toDouble(),
  isNegotiable: json['isNegotiable'] as bool? ?? false,
  isFavorite: json['isFavorite'] as bool? ?? false,
  condition: $enumDecode(_$ConditionEnumMap, json['condition']),
  category: Category.fromJson(json['category'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  material: $enumDecode(_$MaterialTypeEnumMap, json['material']),
  color: json['color'] as String,
  note: json['note'] as String?,
  adSpend: json['adSpend'] == null
      ? null
      : AdSpendMode.fromJson(json['adSpend'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'imagePaths': instance.imagePaths,
  'description': instance.description,
  'price': instance.price,
  'isNegotiable': instance.isNegotiable,
  'isFavorite': instance.isFavorite,
  'condition': _$ConditionEnumMap[instance.condition]!,
  'category': instance.category,
  'location': instance.location,
  'material': _$MaterialTypeEnumMap[instance.material]!,
  'color': instance.color,
  'note': instance.note,
  'adSpend': instance.adSpend,
};

const _$ConditionEnumMap = {
  Condition.new_: 'new',
  Condition.used: 'used',
  Condition.excellent: 'excellent',
  Condition.refurbished: 'refurbished',
};

const _$MaterialTypeEnumMap = {
  MaterialType.wood: 'wood',
  MaterialType.metal: 'metal',
  MaterialType.plastic: 'plastic',
  MaterialType.leather: 'leather',
  MaterialType.other: 'other',
};
