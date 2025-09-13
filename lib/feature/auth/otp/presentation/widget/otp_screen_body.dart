import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/feature/auth/otp/presentation/widget/otp.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            children: [
              27.verticalSpace,
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: AppColors.coffee2.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                        Assets.imagesArrow,
                    ),
                  ),
                  17.horizontalSpace,
                  Text(
                    tr(context, LanguageKey.verificationCode),
                    style: AppTextStyles.font18SemiBold(context).copyWith(
                      color: AppColors.darkBlue,
                    ),
                  ),
                ],
              ),
              64.verticalSpace,
              Text(
                tr(context, LanguageKey.enterTheVerificationCodeSentToYourPhoneNumber),
                style: AppTextStyles.font14Regular(context).copyWith(
                  color: AppColors.grey300,
                ),
              ),
              11.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.imagesEdit
                  ),
                  10.horizontalSpace,
                  Text(
                    "01102507463",
                    style: AppTextStyles.font14Regular(context).copyWith(
                      decoration: TextDecoration.underline,
                      color: AppColors.dark,
                    ),
                  ),
                ],
              ),
              55.verticalSpace,
              Otp(
                email: "01102507463",),
              Spacer(),
              CustomButton(
                yPadding: 14.h,
                borderRadius: 13.r,
                text: tr(context, LanguageKey.confirm),
                onPressed: (){
                  //context.pushReplacementNamed(Routes.lawyerSignUpScreenTwo);
                },
              ),
              30.verticalSpace,
            ],
          ),
        ),);
  }
}
