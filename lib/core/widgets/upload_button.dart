import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({super.key, required this.title, this.icon,required this.onTap});

  final String title;
  final Icon? icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: AppColors.moreWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.font14Regular(context).copyWith(
              color: AppColors.lightGrey,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 61.h,
              width: 61.w,
              decoration: BoxDecoration(
                color: AppColors.neutral,
                borderRadius: BorderRadius.circular(20),
              ),
              child: icon ?? const Icon(
                Icons.cloud_upload_outlined,
                color: AppColors.grey400,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
