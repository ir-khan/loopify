// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_spend_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AdSpendMode _$AdSpendModeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'package':
          return PackageAdSpend.fromJson(
            json
          );
                case 'manual':
          return ManualAdSpend.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AdSpendMode',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AdSpendMode {



  /// Serializes this AdSpendMode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdSpendMode);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdSpendMode()';
}


}

/// @nodoc
class $AdSpendModeCopyWith<$Res>  {
$AdSpendModeCopyWith(AdSpendMode _, $Res Function(AdSpendMode) __);
}


/// Adds pattern-matching-related methods to [AdSpendMode].
extension AdSpendModePatterns on AdSpendMode {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PackageAdSpend value)?  package,TResult Function( ManualAdSpend value)?  manual,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PackageAdSpend() when package != null:
return package(_that);case ManualAdSpend() when manual != null:
return manual(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PackageAdSpend value)  package,required TResult Function( ManualAdSpend value)  manual,}){
final _that = this;
switch (_that) {
case PackageAdSpend():
return package(_that);case ManualAdSpend():
return manual(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PackageAdSpend value)?  package,TResult? Function( ManualAdSpend value)?  manual,}){
final _that = this;
switch (_that) {
case PackageAdSpend() when package != null:
return package(_that);case ManualAdSpend() when manual != null:
return manual(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int packageId,  String name,  double price, @DurationConverter()  Duration duration)?  package,TResult Function( double budget,  int days)?  manual,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PackageAdSpend() when package != null:
return package(_that.packageId,_that.name,_that.price,_that.duration);case ManualAdSpend() when manual != null:
return manual(_that.budget,_that.days);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int packageId,  String name,  double price, @DurationConverter()  Duration duration)  package,required TResult Function( double budget,  int days)  manual,}) {final _that = this;
switch (_that) {
case PackageAdSpend():
return package(_that.packageId,_that.name,_that.price,_that.duration);case ManualAdSpend():
return manual(_that.budget,_that.days);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int packageId,  String name,  double price, @DurationConverter()  Duration duration)?  package,TResult? Function( double budget,  int days)?  manual,}) {final _that = this;
switch (_that) {
case PackageAdSpend() when package != null:
return package(_that.packageId,_that.name,_that.price,_that.duration);case ManualAdSpend() when manual != null:
return manual(_that.budget,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PackageAdSpend implements AdSpendMode {
  const PackageAdSpend({required this.packageId, required this.name, required this.price, @DurationConverter() required this.duration, final  String? $type}): $type = $type ?? 'package';
  factory PackageAdSpend.fromJson(Map<String, dynamic> json) => _$PackageAdSpendFromJson(json);

 final  int packageId;
 final  String name;
 final  double price;
@DurationConverter() final  Duration duration;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AdSpendMode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageAdSpendCopyWith<PackageAdSpend> get copyWith => _$PackageAdSpendCopyWithImpl<PackageAdSpend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageAdSpendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageAdSpend&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageId,name,price,duration);

@override
String toString() {
  return 'AdSpendMode.package(packageId: $packageId, name: $name, price: $price, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $PackageAdSpendCopyWith<$Res> implements $AdSpendModeCopyWith<$Res> {
  factory $PackageAdSpendCopyWith(PackageAdSpend value, $Res Function(PackageAdSpend) _then) = _$PackageAdSpendCopyWithImpl;
@useResult
$Res call({
 int packageId, String name, double price,@DurationConverter() Duration duration
});




}
/// @nodoc
class _$PackageAdSpendCopyWithImpl<$Res>
    implements $PackageAdSpendCopyWith<$Res> {
  _$PackageAdSpendCopyWithImpl(this._self, this._then);

  final PackageAdSpend _self;
  final $Res Function(PackageAdSpend) _then;

/// Create a copy of AdSpendMode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? packageId = null,Object? name = null,Object? price = null,Object? duration = null,}) {
  return _then(PackageAdSpend(
packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ManualAdSpend implements AdSpendMode {
  const ManualAdSpend({required this.budget, required this.days, final  String? $type}): $type = $type ?? 'manual';
  factory ManualAdSpend.fromJson(Map<String, dynamic> json) => _$ManualAdSpendFromJson(json);

 final  double budget;
 final  int days;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AdSpendMode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualAdSpendCopyWith<ManualAdSpend> get copyWith => _$ManualAdSpendCopyWithImpl<ManualAdSpend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManualAdSpendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualAdSpend&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,budget,days);

@override
String toString() {
  return 'AdSpendMode.manual(budget: $budget, days: $days)';
}


}

/// @nodoc
abstract mixin class $ManualAdSpendCopyWith<$Res> implements $AdSpendModeCopyWith<$Res> {
  factory $ManualAdSpendCopyWith(ManualAdSpend value, $Res Function(ManualAdSpend) _then) = _$ManualAdSpendCopyWithImpl;
@useResult
$Res call({
 double budget, int days
});




}
/// @nodoc
class _$ManualAdSpendCopyWithImpl<$Res>
    implements $ManualAdSpendCopyWith<$Res> {
  _$ManualAdSpendCopyWithImpl(this._self, this._then);

  final ManualAdSpend _self;
  final $Res Function(ManualAdSpend) _then;

/// Create a copy of AdSpendMode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? budget = null,Object? days = null,}) {
  return _then(ManualAdSpend(
budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as double,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
