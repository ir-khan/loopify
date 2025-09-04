import 'package:flutter/material.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/widgets/circle_icon_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        forceMaterialTransparency: true,
        leading: Image.asset('assets/images/loopify.png'),
        leadingWidth: 30.27,
        titleSpacing: 12,
        title: Text(
          'Good Morning, Alex!',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0D111A),
          ),
        ),
        actions: [
          CircleIconContainer(svgPath: AppAssets.heart, onTap: () {}),
          const SizedBox(width: 8),
          CircleIconContainer(svgPath: AppAssets.notification, onTap: () {}),
        ],
      ),
    );
  }
}
