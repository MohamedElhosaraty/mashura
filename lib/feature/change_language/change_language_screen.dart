import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/core/localization/localization_methods.dart';
import 'package:mashura/generated/language_key.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/app_colors.dart';
import '../../core/theming/app_text_styles.dart';
import '../../core/widgets/custom_button.dart';
import '../../generated/assets.dart';
import 'cubit/change_language_cubit.dart';

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
            tr(context, LanguageKey.chooseLanguage),
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
                    borderRadius: 5.r,
                    yPadding: 14.h,
                    bgColor: AppColors.coffee,
                    onPressed: () {
                      context.read<ChangeLanguageCubit>().changeLanguage(
                        const Locale('ar', 'EG'),
                      );
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
                15.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    bgColor: AppColors.white,
                    yPadding: 14.h,
                    borderRadius: 5.r,
                    onPressed: () {
                      context.read<ChangeLanguageCubit>().changeLanguage(
                        const Locale('en', 'US'),
                      );
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


              ],
            ),
          ),
        ],
      ),
    );
  }
}
