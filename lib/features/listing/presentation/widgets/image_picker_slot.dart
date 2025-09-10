import 'dart:io';
import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class ImagePickerSlot extends StatelessWidget {
  final String? image;
  final VoidCallback onAdd;
  final VoidCallback? onRemove;

  const ImagePickerSlot({
    super.key,
    required this.image,
    required this.onAdd,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: image == null ? onAdd : null,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.secondaryBackgroundColor,
              borderRadius: BorderRadius.circular(2),
              image: image != null
                  ? DecorationImage(
                      image: image!.startsWith('/')
                          ? FileImage(File(image!))
                          : AssetImage(image!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: image == null
                ? Icon(Icons.add_rounded, color: AppColors.searchHintTextColor)
                : null,
          ),
        ),
        if (image != null && onRemove != null)
          Positioned(
            top: -6,
            right: -6,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: AppColors.redContainerBackgroundColor,
                  border: Border.all(color: AppColors.white),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: AppColors.red, size: 12),
              ),
            ),
          ),
      ],
    );
  }
}
