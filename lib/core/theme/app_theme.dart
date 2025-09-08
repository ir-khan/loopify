import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';

class AppTheme {
  static const _fontFamily = 'Urbanist';

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: _fontFamily,
    scaffoldBackgroundColor: AppColors.white,

    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),

    iconTheme: const IconThemeData(color: AppColors.primaryIconColor, size: 23),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(padding: EdgeInsets.all(4)),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      centerTitle: false,
      leadingWidth: 36,
      titleSpacing: 16,
      titleTextStyle: AppTextStyles.appBarTitle,
      elevation: 0,
    ),

    bottomAppBarTheme: const BottomAppBarThemeData(
      color: AppColors.primaryBackgroundColor,
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        CircleBorder(),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      shape: CircleBorder(),
      backgroundColor: AppColors.primaryBackgroundColor,
    ),

    inputDecorationTheme: InputDecorationThemeData(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.disabledButtonForegroungColor),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryIconColor),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.disabledButtonForegroungColor),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.error),
      ),
    ),

    filledButtonTheme: AppButtonThemes.filledButton,
    textButtonTheme: AppButtonThemes.textButton,

    textTheme: AppTextStyles.textTheme,
  );
}

class AppTextStyles {
  static const appBarTitle = TextStyle(
    fontFamily: AppTheme._fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1,
    color: AppColors.headingTextColor,
  );

  static const textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
      height: 1.1,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1.1,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.headingTextColor,
      height: 1.1,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.headingTextColor,
      height: 1,
      letterSpacing: 0,
    ),
    titleSmall: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor,
      letterSpacing: 0,
    ),
    labelLarge: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
      height: 1.1,
      letterSpacing: 0,
    ),
    labelMedium: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
      height: 1.1,
      letterSpacing: 0,
    ),
    labelSmall: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryTextColor,
      letterSpacing: 0,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextColor,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextColor,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodySmall: TextStyle(
      fontFamily: AppTheme._fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryTextColor,
      height: 1.2,
      letterSpacing: 0,
    ),
  );
}

class AppButtonThemes {
  static final filledButton = FilledButtonThemeData(
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
  );

  static final textButton = TextButtonThemeData(
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
  );
}
