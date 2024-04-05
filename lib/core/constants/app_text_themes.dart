import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme lightTextTheme(BuildContext context) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 57.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 45.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 36.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 36.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 22.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Figtree',
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      // labelLarge: TextStyle(
      //   fontFamily: 'Helvetica Now Text',
      //   fontSize: 14.sp,
      // ).tracking(14),
      // labelMedium: TextStyle(
      //   fontFamily: 'Helvetica Now Text',
      //   fontSize: 12.sp,
      // ).tracking(12),
      // labelSmall: TextStyle(
      //   fontFamily: 'Helvetica Now Text',
      //   fontSize: 11.sp,
      // ).tracking(11),
    );
  }

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.lightGreyColor,
    // filled: true,
    // isCollapsed: true,
    // contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
    hintStyle: TextStyle(color: AppColors.greyColor),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.darkGreyColor,
    // filled: true,
    hintStyle: TextStyle(color: AppColors.greyColor),
    // border: outlineRoundedBorder,
    // isCollapsed: true,
    // contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
    // enabledBorder: outlineRoundedBorder,
    // focusedBorder: outlineRoundedBorder,
    // errorBorder: outlineRoundedBorder,
  );
}
