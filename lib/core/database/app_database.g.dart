// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isNegotiableMeta = const VerificationMeta(
    'isNegotiable',
  );
  @override
  late final GeneratedColumn<bool> isNegotiable = GeneratedColumn<bool>(
    'is_negotiable',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_negotiable" IN (0, 1))',
    ),
    defaultValue: Constant(false),
  );
  static const VerificationMeta _isFavoriteMeta = const VerificationMeta(
    'isFavorite',
  );
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favorite" IN (0, 1))',
    ),
    defaultValue: Constant(false),
  );
  static const VerificationMeta _conditionMeta = const VerificationMeta(
    'condition',
  );
  @override
  late final GeneratedColumn<String> condition = GeneratedColumn<String>(
    'condition',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<int> location = GeneratedColumn<int>(
    'location',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _materialMeta = const VerificationMeta(
    'material',
  );
  @override
  late final GeneratedColumn<String> material = GeneratedColumn<String>(
    'material',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagePathsMeta = const VerificationMeta(
    'imagePaths',
  );
  @override
  late final GeneratedColumn<String> imagePaths = GeneratedColumn<String>(
    'image_paths',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _adSpendMeta = const VerificationMeta(
    'adSpend',
  );
  @override
  late final GeneratedColumn<String> adSpend = GeneratedColumn<String>(
    'ad_spend',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    price,
    isNegotiable,
    isFavorite,
    condition,
    category,
    location,
    material,
    color,
    imagePaths,
    note,
    adSpend,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('is_negotiable')) {
      context.handle(
        _isNegotiableMeta,
        isNegotiable.isAcceptableOrUnknown(
          data['is_negotiable']!,
          _isNegotiableMeta,
        ),
      );
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    }
    if (data.containsKey('condition')) {
      context.handle(
        _conditionMeta,
        condition.isAcceptableOrUnknown(data['condition']!, _conditionMeta),
      );
    } else if (isInserting) {
      context.missing(_conditionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('material')) {
      context.handle(
        _materialMeta,
        material.isAcceptableOrUnknown(data['material']!, _materialMeta),
      );
    } else if (isInserting) {
      context.missing(_materialMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('image_paths')) {
      context.handle(
        _imagePathsMeta,
        imagePaths.isAcceptableOrUnknown(data['image_paths']!, _imagePathsMeta),
      );
    } else if (isInserting) {
      context.missing(_imagePathsMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('ad_spend')) {
      context.handle(
        _adSpendMeta,
        adSpend.isAcceptableOrUnknown(data['ad_spend']!, _adSpendMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      isNegotiable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_negotiable'],
      )!,
      isFavorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favorite'],
      )!,
      condition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condition'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category'],
      )!,
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}location'],
      )!,
      material: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}material'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      )!,
      imagePaths: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_paths'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      adSpend: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ad_spend'],
      ),
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String title;
  final String description;
  final double price;
  final bool isNegotiable;
  final bool isFavorite;
  final String condition;
  final int category;
  final int location;
  final String material;
  final String color;
  final String imagePaths;
  final String? note;
  final String? adSpend;
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.isNegotiable,
    required this.isFavorite,
    required this.condition,
    required this.category,
    required this.location,
    required this.material,
    required this.color,
    required this.imagePaths,
    this.note,
    this.adSpend,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['price'] = Variable<double>(price);
    map['is_negotiable'] = Variable<bool>(isNegotiable);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['condition'] = Variable<String>(condition);
    map['category'] = Variable<int>(category);
    map['location'] = Variable<int>(location);
    map['material'] = Variable<String>(material);
    map['color'] = Variable<String>(color);
    map['image_paths'] = Variable<String>(imagePaths);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || adSpend != null) {
      map['ad_spend'] = Variable<String>(adSpend);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      price: Value(price),
      isNegotiable: Value(isNegotiable),
      isFavorite: Value(isFavorite),
      condition: Value(condition),
      category: Value(category),
      location: Value(location),
      material: Value(material),
      color: Value(color),
      imagePaths: Value(imagePaths),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      adSpend: adSpend == null && nullToAbsent
          ? const Value.absent()
          : Value(adSpend),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      price: serializer.fromJson<double>(json['price']),
      isNegotiable: serializer.fromJson<bool>(json['isNegotiable']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      condition: serializer.fromJson<String>(json['condition']),
      category: serializer.fromJson<int>(json['category']),
      location: serializer.fromJson<int>(json['location']),
      material: serializer.fromJson<String>(json['material']),
      color: serializer.fromJson<String>(json['color']),
      imagePaths: serializer.fromJson<String>(json['imagePaths']),
      note: serializer.fromJson<String?>(json['note']),
      adSpend: serializer.fromJson<String?>(json['adSpend']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'price': serializer.toJson<double>(price),
      'isNegotiable': serializer.toJson<bool>(isNegotiable),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'condition': serializer.toJson<String>(condition),
      'category': serializer.toJson<int>(category),
      'location': serializer.toJson<int>(location),
      'material': serializer.toJson<String>(material),
      'color': serializer.toJson<String>(color),
      'imagePaths': serializer.toJson<String>(imagePaths),
      'note': serializer.toJson<String?>(note),
      'adSpend': serializer.toJson<String?>(adSpend),
    };
  }

  Product copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
    bool? isNegotiable,
    bool? isFavorite,
    String? condition,
    int? category,
    int? location,
    String? material,
    String? color,
    String? imagePaths,
    Value<String?> note = const Value.absent(),
    Value<String?> adSpend = const Value.absent(),
  }) => Product(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    price: price ?? this.price,
    isNegotiable: isNegotiable ?? this.isNegotiable,
    isFavorite: isFavorite ?? this.isFavorite,
    condition: condition ?? this.condition,
    category: category ?? this.category,
    location: location ?? this.location,
    material: material ?? this.material,
    color: color ?? this.color,
    imagePaths: imagePaths ?? this.imagePaths,
    note: note.present ? note.value : this.note,
    adSpend: adSpend.present ? adSpend.value : this.adSpend,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      price: data.price.present ? data.price.value : this.price,
      isNegotiable: data.isNegotiable.present
          ? data.isNegotiable.value
          : this.isNegotiable,
      isFavorite: data.isFavorite.present
          ? data.isFavorite.value
          : this.isFavorite,
      condition: data.condition.present ? data.condition.value : this.condition,
      category: data.category.present ? data.category.value : this.category,
      location: data.location.present ? data.location.value : this.location,
      material: data.material.present ? data.material.value : this.material,
      color: data.color.present ? data.color.value : this.color,
      imagePaths: data.imagePaths.present
          ? data.imagePaths.value
          : this.imagePaths,
      note: data.note.present ? data.note.value : this.note,
      adSpend: data.adSpend.present ? data.adSpend.value : this.adSpend,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('isNegotiable: $isNegotiable, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('condition: $condition, ')
          ..write('category: $category, ')
          ..write('location: $location, ')
          ..write('material: $material, ')
          ..write('color: $color, ')
          ..write('imagePaths: $imagePaths, ')
          ..write('note: $note, ')
          ..write('adSpend: $adSpend')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    description,
    price,
    isNegotiable,
    isFavorite,
    condition,
    category,
    location,
    material,
    color,
    imagePaths,
    note,
    adSpend,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.price == this.price &&
          other.isNegotiable == this.isNegotiable &&
          other.isFavorite == this.isFavorite &&
          other.condition == this.condition &&
          other.category == this.category &&
          other.location == this.location &&
          other.material == this.material &&
          other.color == this.color &&
          other.imagePaths == this.imagePaths &&
          other.note == this.note &&
          other.adSpend == this.adSpend);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<double> price;
  final Value<bool> isNegotiable;
  final Value<bool> isFavorite;
  final Value<String> condition;
  final Value<int> category;
  final Value<int> location;
  final Value<String> material;
  final Value<String> color;
  final Value<String> imagePaths;
  final Value<String?> note;
  final Value<String?> adSpend;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.isNegotiable = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.condition = const Value.absent(),
    this.category = const Value.absent(),
    this.location = const Value.absent(),
    this.material = const Value.absent(),
    this.color = const Value.absent(),
    this.imagePaths = const Value.absent(),
    this.note = const Value.absent(),
    this.adSpend = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required double price,
    this.isNegotiable = const Value.absent(),
    this.isFavorite = const Value.absent(),
    required String condition,
    required int category,
    required int location,
    required String material,
    required String color,
    required String imagePaths,
    this.note = const Value.absent(),
    this.adSpend = const Value.absent(),
  }) : title = Value(title),
       description = Value(description),
       price = Value(price),
       condition = Value(condition),
       category = Value(category),
       location = Value(location),
       material = Value(material),
       color = Value(color),
       imagePaths = Value(imagePaths);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<double>? price,
    Expression<bool>? isNegotiable,
    Expression<bool>? isFavorite,
    Expression<String>? condition,
    Expression<int>? category,
    Expression<int>? location,
    Expression<String>? material,
    Expression<String>? color,
    Expression<String>? imagePaths,
    Expression<String>? note,
    Expression<String>? adSpend,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (isNegotiable != null) 'is_negotiable': isNegotiable,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (condition != null) 'condition': condition,
      if (category != null) 'category': category,
      if (location != null) 'location': location,
      if (material != null) 'material': material,
      if (color != null) 'color': color,
      if (imagePaths != null) 'image_paths': imagePaths,
      if (note != null) 'note': note,
      if (adSpend != null) 'ad_spend': adSpend,
    });
  }

  ProductsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? description,
    Value<double>? price,
    Value<bool>? isNegotiable,
    Value<bool>? isFavorite,
    Value<String>? condition,
    Value<int>? category,
    Value<int>? location,
    Value<String>? material,
    Value<String>? color,
    Value<String>? imagePaths,
    Value<String?>? note,
    Value<String?>? adSpend,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      isNegotiable: isNegotiable ?? this.isNegotiable,
      isFavorite: isFavorite ?? this.isFavorite,
      condition: condition ?? this.condition,
      category: category ?? this.category,
      location: location ?? this.location,
      material: material ?? this.material,
      color: color ?? this.color,
      imagePaths: imagePaths ?? this.imagePaths,
      note: note ?? this.note,
      adSpend: adSpend ?? this.adSpend,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (isNegotiable.present) {
      map['is_negotiable'] = Variable<bool>(isNegotiable.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (condition.present) {
      map['condition'] = Variable<String>(condition.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    if (location.present) {
      map['location'] = Variable<int>(location.value);
    }
    if (material.present) {
      map['material'] = Variable<String>(material.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (imagePaths.present) {
      map['image_paths'] = Variable<String>(imagePaths.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (adSpend.present) {
      map['ad_spend'] = Variable<String>(adSpend.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('isNegotiable: $isNegotiable, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('condition: $condition, ')
          ..write('category: $category, ')
          ..write('location: $location, ')
          ..write('material: $material, ')
          ..write('color: $color, ')
          ..write('imagePaths: $imagePaths, ')
          ..write('note: $note, ')
          ..write('adSpend: $adSpend')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}

typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      required String title,
      required String description,
      required double price,
      Value<bool> isNegotiable,
      Value<bool> isFavorite,
      required String condition,
      required int category,
      required int location,
      required String material,
      required String color,
      required String imagePaths,
      Value<String?> note,
      Value<String?> adSpend,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> description,
      Value<double> price,
      Value<bool> isNegotiable,
      Value<bool> isFavorite,
      Value<String> condition,
      Value<int> category,
      Value<int> location,
      Value<String> material,
      Value<String> color,
      Value<String> imagePaths,
      Value<String?> note,
      Value<String?> adSpend,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get adSpend => $composableBuilder(
    column: $table.adSpend,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get adSpend => $composableBuilder(
    column: $table.adSpend,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );

  GeneratedColumn<String> get condition =>
      $composableBuilder(column: $table.condition, builder: (column) => column);

  GeneratedColumn<int> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<int> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get material =>
      $composableBuilder(column: $table.material, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get adSpend =>
      $composableBuilder(column: $table.adSpend, builder: (column) => column);
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<bool> isNegotiable = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<String> condition = const Value.absent(),
                Value<int> category = const Value.absent(),
                Value<int> location = const Value.absent(),
                Value<String> material = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<String> imagePaths = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String?> adSpend = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                title: title,
                description: description,
                price: price,
                isNegotiable: isNegotiable,
                isFavorite: isFavorite,
                condition: condition,
                category: category,
                location: location,
                material: material,
                color: color,
                imagePaths: imagePaths,
                note: note,
                adSpend: adSpend,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String description,
                required double price,
                Value<bool> isNegotiable = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                required String condition,
                required int category,
                required int location,
                required String material,
                required String color,
                required String imagePaths,
                Value<String?> note = const Value.absent(),
                Value<String?> adSpend = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                title: title,
                description: description,
                price: price,
                isNegotiable: isNegotiable,
                isFavorite: isFavorite,
                condition: condition,
                category: category,
                location: location,
                material: material,
                color: color,
                imagePaths: imagePaths,
                note: note,
                adSpend: adSpend,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
      Product,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
}
