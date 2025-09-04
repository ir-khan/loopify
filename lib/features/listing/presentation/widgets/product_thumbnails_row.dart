import 'package:flutter/material.dart';

class ProductThumbnailsRow extends StatelessWidget {
  const ProductThumbnailsRow({
    super.key,
    required this.imagePaths,
    this.onThumbnailTap,
  });

  final List<String> imagePaths;
  final void Function(int index)? onThumbnailTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        imagePaths.length - 1,
        (index) => ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Image.asset(
            imagePaths[index + 1],
            width: 72,
            height: 72,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
