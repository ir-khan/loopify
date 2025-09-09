import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/features/listing/data/model/ad_spend_mode/ad_spend_mode.dart';
import 'package:loopify/features/listing/data/model/category/category.dart';
import 'package:loopify/features/listing/data/model/location/location.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';

const List<Product> dummyProducts = [
  Product(
    id: 1,
    title: 'Luxurious Gucci Laptop Bag Embellished with Stunning Pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
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
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
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
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
    color: 'Brown',
    imagePaths: [
      AppAssets.promoted_3,
      AppAssets.bag1,
      AppAssets.bag2,
      AppAssets.bag3,
      AppAssets.bag4,
    ],
    price: 650.0,
  ),
  Product(
    id: 4,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
    color: 'Brown',
    imagePaths: [
      AppAssets.promoted_4,
      AppAssets.bag1,
      AppAssets.bag2,
      AppAssets.bag3,
      AppAssets.bag4,
    ],
    price: 1050.0,
  ),
  Product(
    id: 5,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
    color: 'Brown',
    imagePaths: [
      AppAssets.promoted_5,
      AppAssets.bag1,
      AppAssets.bag2,
      AppAssets.bag3,
      AppAssets.bag4,
    ],
    price: 1200.0,
  ),
  Product(
    id: 6,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    isNegotiable: true,
    isFavorite: false,
    condition: Condition.excellent,
    category: Category(id: 2, label: 'Bags', imagePath: AppAssets.bag),
    location: Location(id: 1, name: 'New York'),
    material: MaterialType.leather,
    color: 'Brown',
    imagePaths: [
      AppAssets.promoted_6,
      AppAssets.bag1,
      AppAssets.bag2,
      AppAssets.bag3,
      AppAssets.bag4,
    ],
    price: 430.0,
  ),
];

const dummyLocations = <Location>[
  Location(id: 1, name: "Karachi"),
  Location(id: 2, name: "Lahore"),
  Location(id: 3, name: "Islamabad"),
  Location(id: 4, name: "Rawalpindi"),
  Location(id: 5, name: "Faisalabad"),
  Location(id: 6, name: "Multan"),
  Location(id: 7, name: "Peshawar"),
  Location(id: 8, name: "Quetta"),
  Location(id: 9, name: "Hyderabad"),
  Location(id: 10, name: "Sialkot"),
];

const dummyPackages = <AdSpendMode>[
  AdSpendMode.package(
    packageId: 1,
    name: 'Feature Ad',
    price: 350,
    duration: Duration(days: 30),
  ),
  AdSpendMode.package(
    packageId: 2,
    name: 'Feature Ad',
    price: 250,
    duration: Duration(days: 15),
  ),
  AdSpendMode.package(
    packageId: 3,
    name: 'Feature Ad',
    price: 150,
    duration: Duration(days: 7),
  ),
  AdSpendMode.package(
    packageId: 4,
    name: 'Feature Ad',
    price: 50,
    duration: Duration(days: 3),
  ),
];
