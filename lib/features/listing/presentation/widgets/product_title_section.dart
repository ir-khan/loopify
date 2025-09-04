import 'package:flutter/material.dart';
import 'package:loopify/features/listing/data/model/product.dart';

class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0D111A),
            height: 1.1,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          product.description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.2,
            color: Color(0xFF4B5563),
          ),
        ),
      ],
    );
  }
}
