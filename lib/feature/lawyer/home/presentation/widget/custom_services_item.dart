import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

class CustomServicesItem extends StatelessWidget {
  const CustomServicesItem({super.key, required this.imageString, required this.title});

  final String imageString;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82.h,
      padding: const EdgeInsets.only(right: 23),
      decoration:  BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Image.asset(
            imageString,
          ),
          14.horizontalSpace,
          Text(
            title,
            style: AppTextStyles.font14Regular(context).copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
