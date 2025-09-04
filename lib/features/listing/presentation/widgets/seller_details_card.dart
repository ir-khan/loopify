import 'package:flutter/material.dart';
import 'package:loopify/core/assets/app_assets.dart';

class SellerDetailsCard extends StatelessWidget {
  const SellerDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AppAssets.sellerImage),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0D111A),
                height: 1.2,
              ),
            ),
            Text(
              'Joined Since 2019',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6B7280),
                height: 1.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
