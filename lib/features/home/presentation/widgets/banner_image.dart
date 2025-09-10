import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(4),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 140,
            ),
            Positioned(
              top: 64,
              left: 30,
              child: Text.rich(
                TextSpan(
                  text: 'GET THEM ',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w200,
                    color: AppColors.white,
                    letterSpacing: 16 * 0.39,
                  ),
                  children: [
                    TextSpan(
                      text: 'ALL',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
