import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/app_colors.dart';
import '../../core/theming/app_text_styles.dart';
import '../../core/widgets/custom_button.dart';
import '../../generated/assets.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          200.verticalSpace,
          Image.asset(
            Assets.imagesGroup,
          ),
          241.verticalSpace,
          Text(
            'أختر لغة التطبيق',
            style: AppTextStyles.font22Regular(context).copyWith(
              color: AppColors.background,
            ),
          ),
          25.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    bgColor: AppColors.white,
                    borderRadius: 5.r,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.onBoardingScreen);
                    },
                    child: Text(
                      'English',
                      style: AppTextStyles.font16Regular(context).copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                15.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    borderRadius: 5.r,
                    bgColor: AppColors.coffee,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.onBoardingScreen);

                    },
                    child: Text(
                      'العربية',
                      style: AppTextStyles.font16Regular(context).copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
