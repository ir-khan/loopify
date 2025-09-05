import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Urbanist',
    scaffoldBackgroundColor: AppColors.white,
    iconTheme: IconThemeData(color: AppColors.primaryIconColor, size: 20),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.primaryBackgroundColor,
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        CircleBorder(),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      shape: CircleBorder(),
      backgroundColor: AppColors.primaryBackgroundColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(),
        padding: const EdgeInsets.symmetric(vertical: 19),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 14 * 0.06,
        ),
        elevation: 0,
        disabledBackgroundColor: AppColors.disabledButtonBackgroungColor,
        disabledForegroundColor: AppColors.disabledButtonForegroungColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        shape: const RoundedRectangleBorder(),
        padding: const EdgeInsets.symmetric(vertical: 19),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 14 * 0.06,
        ),
        elevation: 0,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        height: 1.1,
        letterSpacing: 0,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        height: 1.1,
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        height: 1.1,
        letterSpacing: 0,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        letterSpacing: 0,
        height: 1,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        letterSpacing: 0,
        height: 1.2,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        height: 1.2,
        letterSpacing: 0,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.headingTextColor,
        height: 1.1,
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.headingTextColor,
        height: 1,
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryTextColor,
        letterSpacing: 0,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryTextColor,
        height: 1.1,
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryTextColor,
        height: 1.1,
        letterSpacing: 0,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryTextColor,
        letterSpacing: 0,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColor,
        height: 1.2,
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColor,
        height: 1.2,
        letterSpacing: 0,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryTextColor,
        height: 1.2,
        letterSpacing: 0,
      ),
    ),
  );
}
