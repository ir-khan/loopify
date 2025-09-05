import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopify/core/theme/colors.dart';

class CircleIconContainer extends StatelessWidget {
  const CircleIconContainer({
    super.key,
    required this.svgPath,
    required this.onTap,
    this.containerColor,
    this.svgColor,
  });

  final String svgPath;
  final VoidCallback onTap;
  final Color? containerColor;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor ?? AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
              blurStyle: BlurStyle.solid,
              color: Color(0x40E3E3E3),
            ),
          ],
        ),
        child: SvgPicture.asset(
          svgPath,
          colorFilter: ColorFilter.mode(
            svgColor ?? AppColors.primaryIconColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
