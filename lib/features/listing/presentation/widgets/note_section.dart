import 'package:flutter/material.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_text_form_field.dart';

class NoteSection extends StatelessWidget {
  final TextEditingController noteController;

  const NoteSection({super.key, required this.noteController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: 'Add note (Optional)',
      controller: noteController,
      isRequired: false,
    );
  }
}
