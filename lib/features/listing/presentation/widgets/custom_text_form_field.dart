import 'package:flutter/material.dart';
import 'package:loopify/features/listing/presentation/widgets/field_label.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isRequired;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  // TODO: textStyle as parameter
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isRequired = true,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: null,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.labelMedium,
      validator:
          validator ??
          (val) {
            if (isRequired && (val == null || val.trim().isEmpty)) {
              return "Please enter $label";
            }
            return null;
          },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hint: FieldLabel(label: label, isRequired: isRequired),
        contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        isDense: true,
      ),
    );
  }
}
