// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 int? get id; String get title; List<String> get imagePaths; String get description; double get price; bool get isNegotiable; bool get isFavorite; Condition get condition; Category get category; Location get location; MaterialType get material; String get color; String? get note; AdSpendMode? get adSpend;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.imagePaths, imagePaths)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.isNegotiable, isNegotiable) || other.isNegotiable == isNegotiable)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.material, material) || other.material == material)&&(identical(other.color, color) || other.color == color)&&(identical(other.note, note) || other.note == note)&&(identical(other.adSpend, adSpend) || other.adSpend == adSpend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(imagePaths),description,price,isNegotiable,isFavorite,condition,category,location,material,color,note,adSpend);

@override
String toString() {
  return 'Product(id: $id, title: $title, imagePaths: $imagePaths, description: $description, price: $price, isNegotiable: $isNegotiable, isFavorite: $isFavorite, condition: $condition, category: $category, location: $location, material: $material, color: $color, note: $note, adSpend: $adSpend)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int? id, String title, List<String> imagePaths, String description, double price, bool isNegotiable, bool isFavorite, Condition condition, Category category, Location location, MaterialType material, String color, String? note, AdSpendMode? adSpend
});


$CategoryCopyWith<$Res> get category;$LocationCopyWith<$Res> get location;$AdSpendModeCopyWith<$Res>? get adSpend;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? imagePaths = null,Object? description = null,Object? price = null,Object? isNegotiable = null,Object? isFavorite = null,Object? condition = null,Object? category = null,Object? location = null,Object? material = null,Object? color = null,Object? note = freezed,Object? adSpend = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imagePaths: null == imagePaths ? _self.imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,isNegotiable: null == isNegotiable ? _self.isNegotiable : isNegotiable // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as MaterialType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,adSpend: freezed == adSpend ? _self.adSpend : adSpend // ignore: cast_nullable_to_non_nullable
as AdSpendMode?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get location {
  
  return $LocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdSpendModeCopyWith<$Res>? get adSpend {
    if (_self.adSpend == null) {
    return null;
  }

  return $AdSpendModeCopyWith<$Res>(_self.adSpend!, (value) {
    return _then(_self.copyWith(adSpend: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String title,  List<String> imagePaths,  String description,  double price,  bool isNegotiable,  bool isFavorite,  Condition condition,  Category category,  Location location,  MaterialType material,  String color,  String? note,  AdSpendMode? adSpend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.title,_that.imagePaths,_that.description,_that.price,_that.isNegotiable,_that.isFavorite,_that.condition,_that.category,_that.location,_that.material,_that.color,_that.note,_that.adSpend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String title,  List<String> imagePaths,  String description,  double price,  bool isNegotiable,  bool isFavorite,  Condition condition,  Category category,  Location location,  MaterialType material,  String color,  String? note,  AdSpendMode? adSpend)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.title,_that.imagePaths,_that.description,_that.price,_that.isNegotiable,_that.isFavorite,_that.condition,_that.category,_that.location,_that.material,_that.color,_that.note,_that.adSpend);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String title,  List<String> imagePaths,  String description,  double price,  bool isNegotiable,  bool isFavorite,  Condition condition,  Category category,  Location location,  MaterialType material,  String color,  String? note,  AdSpendMode? adSpend)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.title,_that.imagePaths,_that.description,_that.price,_that.isNegotiable,_that.isFavorite,_that.condition,_that.category,_that.location,_that.material,_that.color,_that.note,_that.adSpend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({this.id, required this.title, required final  List<String> imagePaths, required this.description, required this.price, this.isNegotiable = false, this.isFavorite = false, required this.condition, required this.category, required this.location, required this.material, required this.color, this.note, this.adSpend}): _imagePaths = imagePaths;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int? id;
@override final  String title;
 final  List<String> _imagePaths;
@override List<String> get imagePaths {
  if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagePaths);
}

@override final  String description;
@override final  double price;
@override@JsonKey() final  bool isNegotiable;
@override@JsonKey() final  bool isFavorite;
@override final  Condition condition;
@override final  Category category;
@override final  Location location;
@override final  MaterialType material;
@override final  String color;
@override final  String? note;
@override final  AdSpendMode? adSpend;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._imagePaths, _imagePaths)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.isNegotiable, isNegotiable) || other.isNegotiable == isNegotiable)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.material, material) || other.material == material)&&(identical(other.color, color) || other.color == color)&&(identical(other.note, note) || other.note == note)&&(identical(other.adSpend, adSpend) || other.adSpend == adSpend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_imagePaths),description,price,isNegotiable,isFavorite,condition,category,location,material,color,note,adSpend);

@override
String toString() {
  return 'Product(id: $id, title: $title, imagePaths: $imagePaths, description: $description, price: $price, isNegotiable: $isNegotiable, isFavorite: $isFavorite, condition: $condition, category: $category, location: $location, material: $material, color: $color, note: $note, adSpend: $adSpend)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int? id, String title, List<String> imagePaths, String description, double price, bool isNegotiable, bool isFavorite, Condition condition, Category category, Location location, MaterialType material, String color, String? note, AdSpendMode? adSpend
});


@override $CategoryCopyWith<$Res> get category;@override $LocationCopyWith<$Res> get location;@override $AdSpendModeCopyWith<$Res>? get adSpend;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? imagePaths = null,Object? description = null,Object? price = null,Object? isNegotiable = null,Object? isFavorite = null,Object? condition = null,Object? category = null,Object? location = null,Object? material = null,Object? color = null,Object? note = freezed,Object? adSpend = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imagePaths: null == imagePaths ? _self._imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,isNegotiable: null == isNegotiable ? _self.isNegotiable : isNegotiable // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as MaterialType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,adSpend: freezed == adSpend ? _self.adSpend : adSpend // ignore: cast_nullable_to_non_nullable
as AdSpendMode?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get location {
  
  return $LocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdSpendModeCopyWith<$Res>? get adSpend {
    if (_self.adSpend == null) {
    return null;
  }

  return $AdSpendModeCopyWith<$Res>(_self.adSpend!, (value) {
    return _then(_self.copyWith(adSpend: value));
  });
}
}

// dart format on
