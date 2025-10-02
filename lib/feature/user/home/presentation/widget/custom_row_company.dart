import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';

class CustomRowCompany extends StatelessWidget {
  const CustomRowCompany({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesLocation,
          color: AppColors.coffee3,
        ),
        8.horizontalSpace,
        Text(
          title,
          style: AppTextStyles.font12Regular(
            context,
          ).copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
