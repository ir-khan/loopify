import 'package:loopify/features/home/data/models/category.dart';
import 'package:loopify/features/listing/data/model/condition.dart';

class Product {
  final int id;
  final String title;
  final List<String> imagePaths;
  final String description;
  final double price;
  final bool isNegotiable;
  final bool isFavorite;
  final Condition condition;
  final Category category;
  final String location;
  final String material;
  final String color;
  final String? note;

  const Product({
    required this.id,
    required this.title,
    required this.imagePaths,
    required this.description,
    required this.price,
    required this.isNegotiable,
    required this.isFavorite,
    required this.condition,
    required this.category,
    required this.location,
    required this.material,
    required this.color,
    this.note,
  });
}
