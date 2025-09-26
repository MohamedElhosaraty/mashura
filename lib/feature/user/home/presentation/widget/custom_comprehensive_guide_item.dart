import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class CustomComprehensiveGuideItem extends StatelessWidget {
  const CustomComprehensiveGuideItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0),
      decoration: BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         CircleAvatar(
           radius: 50.r,
           backgroundImage: AssetImage(
               Assets.imagesComprehensiveGuide),
         ),
          17.verticalSpace,
          Text(
            tr(context, LanguageKey.futureCompany), style:
          AppTextStyles.font14SemiBold(
              context,
            ).copyWith(color: AppColors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesLocation,
                color: AppColors.coffee3,
              ),
              8.horizontalSpace,
              Text(
                tr(context, LanguageKey.riyadh),
                style: AppTextStyles.font12Bold(context).copyWith(
                  color: AppColors.coffee3,
                ),
              ),
            ],
          ),
          2.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesMedal,
              ),
              10.horizontalSpace,
              Text(
                tr(context, LanguageKey.theSpecializationIsPlacedHere),
                style: AppTextStyles.font12Bold(context).copyWith(
                  color: AppColors.coffee3,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
