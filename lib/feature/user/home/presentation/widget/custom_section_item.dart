import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/localization/localization_methods.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class CustomSectionItem extends StatelessWidget {
  const CustomSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesSplashLogo,
            width: 70.w,
            height: 70.h,
          ),
          10.horizontalSpace,
          Column(
            children: [
              Text(
                'Company name',
                style: AppTextStyles.font14Regular(context).copyWith(
                  color: AppColors.black,
                ),
              ),
              15.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    Assets.imagesLocation,
                    color: AppColors.primaryColor,
                  ),
                  4.horizontalSpace,
                  Text(
                    tr(context, LanguageKey.riyadh),
                    style: AppTextStyles.font12Regular(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                  ),
                  4.horizontalSpace,
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                    size: 16.sp,
                  ),
                  Text(
                    '(0)',
                    style: AppTextStyles.font12Regular(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                  ),

                ],
              )
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'سعر الاستشارة',
                style: AppTextStyles.font14Regular(context).copyWith(
                  color: AppColors.black,
                ),
              ),
              2.verticalSpace,
              Row(
                children: [
                  // Image.asset(
                  //   Assets.imagesMoney,
                  // ),
                  4.horizontalSpace,
                  Text(
                    '25 ريال',
                    style: AppTextStyles.font12Regular(
                      context,
                    ).copyWith(color: AppColors.black),
                  ),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
