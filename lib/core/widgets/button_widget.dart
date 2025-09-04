import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double width;
  final double height;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.background,
        padding: EdgeInsets.symmetric(
          horizontal: width.sp,
          vertical: height.sp,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.sp),
          side: BorderSide(
            color: AppColors.primaryColor,
            width: 1.sp,
          ),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyles.font22Regular(context).copyWith(
          color: AppColors.primaryColor
        )
      ),
    );
  }
}
