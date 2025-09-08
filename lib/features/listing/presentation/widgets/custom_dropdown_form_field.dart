import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/features/listing/presentation/widgets/field_label.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  final String label;
  final List<T> items;
  final String Function(T) itemLabel;
  final ValueChanged<T?> onChanged;
  final T? initialValue;

  const CustomDropdownFormField({
    super.key,
    required this.label,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: initialValue,
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: AppColors.secondaryIconColor,
      ),
      style: Theme.of(context).textTheme.labelMedium,
      iconSize: 20,
      onChanged: onChanged,
      validator: (val) => val == null ? 'Please select $label' : null,
      items: items
          .map(
            (item) =>
                DropdownMenuItem<T>(value: item, child: Text(itemLabel(item))),
          )
          .toList(),
      dropdownColor: AppColors.white,
      decoration: InputDecoration(
        hint: FieldLabel(label: label),
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 8),
        isDense: true,
      ),
    );
  }
}
