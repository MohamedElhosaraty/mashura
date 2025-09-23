import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class CustomNotificationItem extends StatelessWidget {
  const CustomNotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 11, left: 10, right: 10),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. محتوى التنبيه هنا. ",
            style: AppTextStyles.font14Regular(context).copyWith(
              color: AppColors.grey200,
            ),
          ),
          2.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.access_time_filled_outlined,
                size: 15.sp,
                color: AppColors.grey200,
              ),
              5.horizontalSpace,
              Text(
                "منذ يومين",
                style: AppTextStyles.font12Regular(context).copyWith(
                  color: AppColors.grey200,
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
