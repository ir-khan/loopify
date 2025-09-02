import 'package:flutter/material.dart';

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
              width: 350,
              height: 140,
            ),
            Positioned(
              top: 64,
              left: 30,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'GET THEM ',
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                    TextSpan(
                      text: 'ALL',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 16 * 0.39,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
