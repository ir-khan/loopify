import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/core/widgets/circle_icon_container.dart';

class ProductImagesStack extends StatefulWidget {
  const ProductImagesStack({
    super.key,
    required this.imagePaths,
    required this.onBack,
    required this.onShare,
    required this.onFavorite,
  });

  final List<String> imagePaths;
  final VoidCallback onBack;
  final VoidCallback onShare;
  final VoidCallback onFavorite;

  @override
  State<ProductImagesStack> createState() => _ProductImagesStackState();
}

class _ProductImagesStackState extends State<ProductImagesStack> {
  late int _currentIndex = 0;

  void moveToPage(int newIndex) {
    _currentIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: widget.imagePaths.length,
            onPageChanged: moveToPage,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.asset(
                    widget.imagePaths[index],
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 217,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0, 0.7617],
                          colors: [Color(0x00131313), Color(0xAD131313)],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            left: 20,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: GestureDetector(
                  onTap: widget.onBack,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppAssets.arrowLeft,
                      width: 12.1,
                      height: 15,
                      colorFilter: const ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  spacing: 8,
                  children: [
                    CircleIconContainer(
                      svgPath: AppAssets.share,
                      onTap: widget.onShare,
                    ),
                    CircleIconContainer(
                      svgPath: AppAssets.heart,
                      onTap: widget.onFavorite,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: List.generate(
                widget.imagePaths.length,
                (index) => Container(
                  width: _currentIndex == index ? 8 : 6,
                  height: _currentIndex == index ? 8 : 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? AppColors.primaryBackgroundColor
                        : _currentIndex - 1 == index ||
                              _currentIndex + 1 == index
                        ? AppColors.white.withAlpha(0x80)
                        : AppColors.white.withAlpha(0x1A),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
