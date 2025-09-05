import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.label, required this.imagePath});

  final String label;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Container(
          width: 72,
          height: 72,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primaryBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(imagePath),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.tertiaryTextColor,
            height: 1,
          ),
        ),
      ],
    );
  }
}
