import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/assets.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomPhoneNumberField extends StatelessWidget {
  const CustomPhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.imagesSaudiArabia),
            radius: 12,
          ),
          8.horizontalSpace,
          Text(
            '+966',
            style: AppTextStyles.font16Regular(
              context,
            ).copyWith(color: AppColors.darkBlue),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.0),
            child: VerticalDivider(width: 16, thickness: 1),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11),
              ],
              style:AppTextStyles.font16Regular(
                context,
              ).copyWith(color: AppColors.neutral),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '5xx xxx xxx',
                hintStyle: AppTextStyles.font16Regular(
                  context,
                ).copyWith(color: AppColors.neutral),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
