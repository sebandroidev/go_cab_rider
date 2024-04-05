import 'package:flutter/material.dart';
import 'package:go_cab_rider/core/utils/app_utils.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_themes.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      applyElevationOverlayColor: false,
      fontFamily: 'Roobert',
      primaryColorLight: AppColors.primaryColor,
      primarySwatch: AppUtils.createMaterialColor(AppColors.primaryColor),
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(color: AppColors.blackColor),
      textTheme: AppTextThemes.lightTextTheme(context),
      inputDecorationTheme: AppTextThemes.lightInputDecorationTheme,
      cardTheme: CardTheme(
        color: AppColors.lightGreyColor,
      ),
      dividerTheme: DividerThemeData(color: AppColors.lightGreyColor),
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: AppColors.primaryColor,
        secondary: AppColors.primaryColor,
        onPrimary: AppColors.blackColor,
        surface: Colors.white,
        surfaceTint: Colors.white,
        onBackground: AppColors.blackColor,
      ),
      dividerColor: AppColors.lightGreyColor,
    );
  }
}
