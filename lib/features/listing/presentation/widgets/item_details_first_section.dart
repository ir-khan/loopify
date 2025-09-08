import 'package:flutter/material.dart';
import 'package:loopify/features/listing/data/model/category/category.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_dropdown_form_field.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_text_form_field.dart';

class ItemDetailsFirstSection extends StatelessWidget {
  final List<Category> categories;
  final Category? selectedCategory;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final ValueChanged<Category?> onCategoryChanged;

  const ItemDetailsFirstSection({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.titleController,
    required this.descriptionController,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdownFormField<Category>(
          label: "Choose category",
          items: categories,
          itemLabel: (cat) => cat.label,
          onChanged: onCategoryChanged,
          initialValue: selectedCategory,
        ),
        const SizedBox(height: 48),
        CustomTextFormField(label: 'Item name', controller: titleController),
        const SizedBox(height: 48),
        CustomTextFormField(
          label: 'Description',
          controller: descriptionController,
        ),
      ],
    );
  }
}
