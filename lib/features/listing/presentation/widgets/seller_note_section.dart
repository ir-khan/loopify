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
        Text(note, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
