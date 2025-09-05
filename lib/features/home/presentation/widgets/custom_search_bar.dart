import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/theme/colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.primaryBackgroundColor,
          hintText: 'Explore to next purchase.',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.searchHintTextColor,
          ),
          prefixIconConstraints: BoxConstraints(),
          suffixIconConstraints: BoxConstraints(),
          contentPadding: EdgeInsets.symmetric(vertical: 19, horizontal: 8),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: SvgPicture.asset(
              AppAssets.search,
              colorFilter: ColorFilter.mode(
                AppColors.primaryIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SvgPicture.asset(
              AppAssets.searchFilter,
              colorFilter: ColorFilter.mode(
                AppColors.primaryIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
