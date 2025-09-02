import 'package:flutter/material.dart';
import 'package:loopify/core/utils/formaters.dart';

class PromotedItem extends StatefulWidget {
  const PromotedItem({
    super.key,
    required this.label,
    required this.imagePath,
    required this.price,
  });

  final String label;
  final String imagePath;
  final double price;

  @override
  State<PromotedItem> createState() => _PromotedItemState();
}

class _PromotedItemState extends State<PromotedItem> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(4),
            child: Image.asset(widget.imagePath, width: 167, height: 167),
          ),
          Text(
            widget.label,
            softWrap: true,
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
                priceFormater(widget.price),
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
                child: Icon(
                  isFavourite
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,

                  color: isFavourite ? Colors.red : Color(0xFF32B780),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
