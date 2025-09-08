import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class FieldLabel extends StatelessWidget {
  final String label;
  final bool isRequired;

  const FieldLabel({super.key, required this.label, this.isRequired = true});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.secondaryTextColor,
          height: 1.1,
        ),
        children: isRequired
            ? const [
                TextSpan(
                  text: '*',
                  style: TextStyle(color: AppColors.error),
                ),
              ]
            : [],
      ),
    );
  }
}
