import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_cab_rider/core/constants/app_colors.dart';
import 'package:go_cab_rider/core/utils/app_utils.dart';

import '../constants/app_values.dart';

class RoundedSquareButton extends StatelessWidget {
  const RoundedSquareButton({super.key, required this.label, this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: AppValues.defaultPadding.h * 1.1),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: onPressed != null
              ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.primaryColor, AppColors.secondaryColor],
                )
              : null,
          color: onPressed == null
              ? AppUtils.isCurrentThemeLight(context)
                  ? AppColors.whiteColor20.withOpacity(.5)
                  : AppColors.whiteColor10.withOpacity(.5)
              : null,
          borderRadius:
              BorderRadius.circular(AppValues.defaultBorderRadius.h / 3),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: onPressed != null ? AppColors.whiteColor : null),
        ),
      ),
    );
  }
}
