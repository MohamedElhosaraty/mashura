import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/core/widgets/custom_phone_number_field.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class LawyerLoginScreen extends StatelessWidget {
  const LawyerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              25.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Assets.imagesLogo),
                  Spacer(),
                  Icon(Icons.language_outlined, size: 17),
                  10.horizontalSpace,
                  Text(
                    "English",
                    style: AppTextStyles.font12Regular(
                      context,
                    ).copyWith(color: AppColors.black),
                  ),

                ],
              ),
              16.verticalSpace,
              Text(
                tr(context, LanguageKey.login),
                style: AppTextStyles.font22Regular(
                  context,
                ).copyWith(color: AppColors.darkBlue),
              ),
              50.verticalSpace,
              Text(
                tr(context, LanguageKey.phoneNumber),
                style: AppTextStyles.font14Regular(
                  context,
                ).copyWith(color: AppColors.darkBlue),
              ),
              10.verticalSpace,
              CustomPhoneNumberField(),
              Spacer(),
              CustomButton(
                bgColor: AppColors.primaryColor,
                yPadding: 18.h,
                borderRadius: 13.r,
                onPressed: () {},
                child: Text(
                  tr(context, LanguageKey.login),
                  style: AppTextStyles.font18Regular(
                    context,
                  ).copyWith(color: AppColors.background),
                ),
              ),
              23.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tr(context, LanguageKey.dontHaveAccount),
                    style: AppTextStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.darkBlue),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushReplacementNamed(Routes.lawyerSignUpScreenOne);
                    },
                    child: Text(
                    tr(context, LanguageKey.registerNow),
                    style: AppTextStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.coffee),
                  ),
                  ),
                ],
              ),
              37.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      context.pushReplacementNamed(Routes.userLoginScreen);
                    },
                    child: Text(
                      tr(context, LanguageKey.registerAsClient),
                      style: AppTextStyles.font12Regular(
                        context,
                      ).copyWith(color: AppColors.darkBlue),
                    ),
                  ),
                  Icon(Icons.person, size: 15, color: AppColors.coffee),

                ],
              ),
              20.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
