import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/theme/colors.dart';

class CustomPreferredSizedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomPreferredSizedAppBar({super.key, required this.label});

  final String label;

  @override
  Size get preferredSize => const Size.fromHeight(36);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            AppAssets.arrowLeft,
            colorFilter: ColorFilter.mode(
              AppColors.primaryIconColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: Text(label),
      ),
    );
  }
}
