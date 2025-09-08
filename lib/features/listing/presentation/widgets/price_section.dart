import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_text_form_field.dart';

class PriceSection extends StatelessWidget {
  final TextEditingController priceController;
  final bool isNegotiable;
  final ValueChanged<bool?> onNegotiableChanged;

  const PriceSection({
    super.key,
    required this.priceController,
    required this.isNegotiable,
    required this.onNegotiableChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomTextFormField(
          label: 'Price in USD',
          controller: priceController,
          keyboardType: TextInputType.number,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Check the box if you are flexible to negotiate the price.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  height: 1.1,
                  color: AppColors.secondaryIconColor,
                ),
              ),
            ),
            Checkbox(
              value: isNegotiable,
              onChanged: onNegotiableChanged,
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              side: BorderSide(color: AppColors.disabledButtonForegroungColor),
            ),
          ],
        ),
      ],
    );
  }
}
