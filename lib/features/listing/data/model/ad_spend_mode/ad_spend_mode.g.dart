// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_spend_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageAdSpend _$PackageAdSpendFromJson(Map<String, dynamic> json) =>
    PackageAdSpend(
      packageId: (json['packageId'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      duration: const DurationConverter().fromJson(
        (json['duration'] as num).toInt(),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PackageAdSpendToJson(PackageAdSpend instance) =>
    <String, dynamic>{
      'packageId': instance.packageId,
      'name': instance.name,
      'price': instance.price,
      'duration': const DurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };

ManualAdSpend _$ManualAdSpendFromJson(Map<String, dynamic> json) =>
    ManualAdSpend(
      budget: (json['budget'] as num).toDouble(),
      days: (json['days'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ManualAdSpendToJson(ManualAdSpend instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'days': instance.days,
      'runtimeType': instance.$type,
    };
