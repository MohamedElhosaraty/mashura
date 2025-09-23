import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/assets.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.actions});

  final String title;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: AppColors.coffee2.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              Assets.imagesArrow,
              scale: .8,
            ),
          ),
        ),
        17.horizontalSpace,
        Text(
          title,
          style: AppTextStyles.font18SemiBold(context).copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        Spacer(),
        actions ?? const SizedBox.shrink(),
      ],
    );

  }
}
