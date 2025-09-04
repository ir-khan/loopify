import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/features/home/data/models/category.dart';
import 'package:loopify/features/listing/data/model/condition.dart';
import 'package:loopify/features/listing/data/model/product.dart';

const List<Product> products = [
  Product(
    id: 1,
    title: 'Luxurious Gucci Laptop Bag Embellished with Stunning Pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [
      AppAssets.promoted_1,
      AppAssets.bag1,
      AppAssets.bag2,
      AppAssets.bag3,
      AppAssets.bag4,
    ],
    price: 920.0,
    note:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
  ),
  Product(
    id: 2,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [AppAssets.promoted_2],
    price: 780.0,
  ),
  Product(
    id: 3,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [AppAssets.promoted_3],
    price: 650.0,
  ),
  Product(
    id: 4,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [AppAssets.promoted_4],
    price: 1050.0,
  ),
  Product(
    id: 5,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [AppAssets.promoted_5],
    price: 1200.0,
  ),
  Product(
    id: 6,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition(id: 1, label: 'Excellent'),
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    imagePaths: [AppAssets.promoted_6],
    price: 430.0,
  ),
];
