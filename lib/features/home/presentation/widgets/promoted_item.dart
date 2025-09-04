import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/features/listing/data/model/product.dart';

class PromotedItem extends StatefulWidget {
  const PromotedItem({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  State<PromotedItem> createState() => _PromotedItemState();
}

class _PromotedItemState extends State<PromotedItem> {
  bool isFavourite = false;
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
              child: Image.asset(
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
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF4B5563),
                height: 1.2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  priceFormater(widget.product.price),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isFavourite = !isFavourite;
                  }),
                  child: SvgPicture.asset(
                    widget.product.isFavorite || isFavourite
                        ? AppAssets.heartFilled
                        : AppAssets.heart,
                    colorFilter: ColorFilter.mode(
                      Color(0xFF32B780),
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
