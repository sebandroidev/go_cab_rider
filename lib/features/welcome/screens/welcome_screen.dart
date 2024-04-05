import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_cab_rider/core/constants/app_colors.dart';
import 'package:go_cab_rider/core/constants/app_values.dart';
import 'package:go_cab_rider/core/widgets/rounded_square_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Luxurious.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54,
                      Colors.transparent,
                      Colors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.12, .5, 1],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Gap(AppValues.defaultPadding.h * 1.5),
                      SvgPicture.asset(
                        'assets/icons/logo.svg',
                        color: AppColors.whiteColor,
                        height: 45.h,
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppValues.defaultPadding.w),
                        child: Text(
                          'Sit back and go wherever you want.',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: AppColors.whiteColor,
                                letterSpacing: 0,
                                height: 0,
                              ),
                        ),
                      ),
                      Gap(AppValues.defaultPadding.h * 1.5),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppValues.defaultPadding.w),
                        child: Text(
                          'Request a ride at an unbeatable price with premium service',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: AppColors.whiteColor80,
                                  letterSpacing: 0),
                        ),
                      ),
                      Gap(AppValues.defaultPadding.h * 2.5),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppValues.defaultPadding.w),
                        child: RoundedSquareButton(
                          label: 'Let\'s Get Started',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
