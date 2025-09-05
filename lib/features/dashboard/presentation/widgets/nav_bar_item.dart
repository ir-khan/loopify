import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopify/core/theme/colors.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.selectedSvg,
    required this.unselectedSvg,
    required this.label,
    required this.isSelected,
    this.onTap,
  });

  final String selectedSvg;
  final String unselectedSvg;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? AppColors.black : AppColors.secondaryTextColor;
    final fontWeight = isSelected ? FontWeight.w500 : FontWeight.w400;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 73.2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isSelected ? selectedSvg : unselectedSvg,
              width: 24,
              height: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: color,
                fontWeight: fontWeight,
                height: 16 / 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
