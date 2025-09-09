import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,style: AppTextStyles.font14Regular(context).copyWith(
        color: AppColors.darkBlue),);
  }
}
