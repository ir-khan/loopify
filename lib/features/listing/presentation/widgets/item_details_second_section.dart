import 'package:flutter/material.dart' hide MaterialType;
import 'package:loopify/features/listing/data/model/location/location.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_dropdown_form_field.dart';
import 'package:loopify/features/listing/presentation/widgets/custom_text_form_field.dart';

class ItemDetailsSecondSection extends StatelessWidget {
  final List<Location> locations;
  final Condition? selectedCondition;
  final Location? selectedLocation;
  final MaterialType? selectedMaterial;
  final TextEditingController colorController;

  final ValueChanged<Condition?> onConditionChanged;
  final ValueChanged<Location?> onLocationChanged;
  final ValueChanged<MaterialType?> onMaterialChanged;

  const ItemDetailsSecondSection({
    super.key,
    required this.locations,
    required this.selectedCondition,
    required this.selectedLocation,
    required this.selectedMaterial,
    required this.colorController,
    required this.onConditionChanged,
    required this.onLocationChanged,
    required this.onMaterialChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdownFormField<Condition>(
          label: "Choose condition",
          items: Condition.values,
          itemLabel: (c) => c.label,
          onChanged: onConditionChanged,
          initialValue: selectedCondition,
        ),
        const SizedBox(height: 48),
        CustomDropdownFormField<Location>(
          label: "Location",
          items: locations,
          itemLabel: (loc) => loc.name,
          onChanged: onLocationChanged,
          initialValue: selectedLocation,
        ),
        const SizedBox(height: 48),
        CustomDropdownFormField<MaterialType>(
          label: "Choose material",
          items: MaterialType.values,
          itemLabel: (m) => m.label,
          onChanged: onMaterialChanged,
          initialValue: selectedMaterial,
        ),
        const SizedBox(height: 48),
        CustomTextFormField(label: 'Color', controller: colorController),
      ],
    );
  }
}
