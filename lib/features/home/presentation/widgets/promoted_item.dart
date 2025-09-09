import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';

class PromotedItem extends StatefulWidget {
  const PromotedItem({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  State<PromotedItem> createState() => _PromotedItemState();
}

class _PromotedItemState extends State<PromotedItem> {
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 167,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(4),
              child: widget.product.imagePaths[0].startsWith('/')
                  ? Image.file(
                      File(widget.product.imagePaths[0]),
                      fit: BoxFit.cover,
                      width: 167,
                      height: 167,
                    )
                  : Image.asset(
                      widget.product.imagePaths[0],
                      fit: BoxFit.cover,
                      width: 167,
                      height: 167,
                    ),
            ),
            Text(
              widget.product.title,
              // textAlign: TextAlign.justify,
              // softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  priceFormater(widget.product.price),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.black,
                    height: 1,
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _isFavourite = !_isFavourite;
                  }),
                  child: SvgPicture.asset(
                    widget.product.isFavorite || _isFavourite
                        ? AppAssets.heartFilled
                        : AppAssets.heart,
                    colorFilter: ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
