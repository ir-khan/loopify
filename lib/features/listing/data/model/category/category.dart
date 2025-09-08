import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String label,
    required String imagePath,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}

extension CategoryX on Category {
  int get dbValue => id;
  static Category fromDb(int id, List<Category> categories) =>
      categories.firstWhere((c) => c.id == id);
}
