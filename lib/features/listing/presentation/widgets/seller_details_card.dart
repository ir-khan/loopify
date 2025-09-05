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
            Text('John Doe', style: Theme.of(context).textTheme.headlineMedium),
            Text(
              'Joined Since 2019',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
