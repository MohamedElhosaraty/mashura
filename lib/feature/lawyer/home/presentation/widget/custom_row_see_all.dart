import 'package:flutter/material.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/language_key.dart';

class CustomRowSeeAll extends StatelessWidget {
  const CustomRowSeeAll({super.key, required this.title,required this.onTap});

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.font16Regular(
            context,
          ).copyWith(color: AppColors.primaryColor),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            tr(context, LanguageKey.seeAll),
            style: AppTextStyles.font14Regular(
              context,
            ).copyWith(color: AppColors.coffee2),
          ),
        ),
      ],
    );
  }
}
