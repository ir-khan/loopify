import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({required int id, required String name}) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

extension LocationX on Location {
  int get dbValue => id;
  static Location fromDb(int id, List<Location> locations) =>
      locations.firstWhere((l) => l.id == id);
}
