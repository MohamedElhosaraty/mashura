import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class CustomRateItem extends StatelessWidget {
  const CustomRateItem({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColors.neutral,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              Image.asset(
                Assets.imagesMan,
                width: 58.w,
                height: 58.h,
              ),
              10.horizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.font14Regular(context).copyWith(
                      color: AppColors.primaryColor2,
                    ),
                  ),
                  8.horizontalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                      size: 13,
                      color: AppColors.primaryColor,),
                      2.horizontalSpace,
                      Text(
                        tr(context, LanguageKey.riyadh),
                        style: AppTextStyles.font12Regular(context)
                      ),
                      4.horizontalSpace,
                      Icon(
                        Icons.star,
                        size: 13,
                        color: AppColors.yellow,),
                      2.horizontalSpace,
                      Text(
                        "(4.5)",
                        style: AppTextStyles.font12Regular(context).copyWith(
                          color: AppColors.black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        15.verticalSpace,
      ],
    );
  }
}
