import 'package:flutter/material.dart';

class ProductDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool showNegotiable;

  const ProductDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.showNegotiable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF4B5563),
            height: 1.2,
          ),
        ),
        Row(
          children: [
            if (showNegotiable)
              Container(
                margin: const EdgeInsets.only(right: 4),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFFECFDF5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Negotiable",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF32B780),
                  ),
                ),
              ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF4B5563),
                height: 1.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
