import 'package:flutter/material.dart';
import 'package:loopify/core/widgets/section_title.dart';

class SellerNoteSection extends StatelessWidget {
  const SellerNoteSection({super.key, required this.note});

  final String note;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 36),
        const SectionTitle(label: 'Seller’s note'),
        const SizedBox(height: 16),
        Text(
          note,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF4B5563),
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
