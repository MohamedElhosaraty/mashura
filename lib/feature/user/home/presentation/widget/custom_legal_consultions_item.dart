import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';

class CustomLegalConsultionsItem extends StatelessWidget {
  const CustomLegalConsultionsItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration:  BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesSplashLogo,
            height: 50.h,
            width: 50.w,
          ),
          10.verticalSpace,
          Text(title,
            style: AppTextStyles.font12Regular(context).copyWith(
              color: AppColors.coffee3,
            ),),
        ],
      ),
    );
  }
}
