import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

class CustomTextProfileCompany extends StatelessWidget {
  const CustomTextProfileCompany({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.font14Bold(context).copyWith(
            color: AppColors.coffee2,
            height: 2.5,
          ),
        ),
        Text(
          subTitle,
          style: AppTextStyles.font14SemiBold(context).copyWith(
            color: AppColors.black,
            height: 2.5,
          ),
        ),
      ]
    );
  }
}
