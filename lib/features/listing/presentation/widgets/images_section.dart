import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/core/services/image_service.dart';
import 'package:loopify/features/listing/presentation/widgets/image_picker_slot.dart';
import 'package:loopify/features/listing/presentation/widgets/field_label.dart';

class ImagesSection extends StatefulWidget {
  final List<String> selectedImages;
  final ValueChanged<List<String>> onImagesChanged;

  const ImagesSection({
    super.key,
    required this.selectedImages,
    required this.onImagesChanged,
  });

  @override
  State<ImagesSection> createState() => _ImagesSectionState();
}

class _ImagesSectionState extends State<ImagesSection> {
  final ImageService _imageService = ImageService();

  Future<void> _pickImages() async {
    final remaining = 5 - widget.selectedImages.length;
    if (remaining <= 0) return;

    final newImages = await _imageService.pickAndSaveImages(
      maxImages: remaining,
    );

    if (newImages.isNotEmpty) {
      final updated = [...widget.selectedImages, ...newImages];
      widget.onImagesChanged(updated);
    }
  }

  void _removeImage(int index) {
    final updated = [...widget.selectedImages]..removeAt(index);
    widget.onImagesChanged(updated);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FieldLabel(label: 'Add images'),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(5, (index) {
              final imagePath = index < widget.selectedImages.length
                  ? widget.selectedImages[index]
                  : null;

              return ImagePickerSlot(
                image: imagePath != null ? File(imagePath) : null,
                onAdd: _pickImages,
                onRemove: imagePath != null ? () => _removeImage(index) : null,
              );
            }),
          ),
        ],
      ),
    );
  }
}
