import 'package:flutter/material.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/core/widgets/section_title.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/presentation/widgets/product_detail_row.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(label: 'Product details:'),
        const SizedBox(height: 24),
        ProductDetailRow(
          label: 'Price',
          value: priceFormater(product.price),
          showNegotiable: product.isNegotiable,
        ),
        const SizedBox(height: 16),
        ProductDetailRow(label: 'Condition', value: product.condition.label),
        const SizedBox(height: 16),
        ProductDetailRow(label: 'Category', value: product.category.label),
        const SizedBox(height: 16),
        ProductDetailRow(label: 'Location', value: product.location.name),
        const SizedBox(height: 16),
        ProductDetailRow(label: 'Material', value: product.material.label),
        const SizedBox(height: 16),
        ProductDetailRow(label: 'Color', value: product.color),
      ],
    );
  }
}
