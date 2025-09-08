import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_spend_mode.freezed.dart';
part 'ad_spend_mode.g.dart';

@freezed
sealed class AdSpendMode with _$AdSpendMode {
  const factory AdSpendMode.package({
    required int packageId,
    required String name,
    required double price,
    @DurationConverter() required Duration duration,
  }) = PackageAdSpend;

  const factory AdSpendMode.manual({
    required double budget,
    required int days,
  }) = ManualAdSpend;

  factory AdSpendMode.fromJson(Map<String, dynamic> json) =>
      _$AdSpendModeFromJson(json);
}

class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) => Duration(seconds: json);

  @override
  int toJson(Duration object) => object.inSeconds;
}

enum AdSpendModeType { packages, manual }
