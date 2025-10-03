import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          textColor: AppColors.primaryColor,
          iconColor: AppColors.coffee3,
          collapsedIconColor: AppColors.coffee3,
          title: Row(
            children: [
              Image.asset(
                Assets.imagesBagCon,
                scale: .8,
              ),
              16.horizontalSpace,
              Text(
                title,
                style: AppTextStyles.font16Regular(context),
              ),
            ],
          ),
          childrenPadding: const EdgeInsets.only(right: 24.0),
          children: [child]
        ),
      ),
    );
  }
}
