import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/upload_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
import 'custom_text.dart';

class LawyerSignUpScreenTwoBody extends StatelessWidget {
  const LawyerSignUpScreenTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesLogo,
                ),
                Spacer(),
                Text(
                  "${tr(context,LanguageKey.step)} 2 ${tr(context, LanguageKey.from)} 2",
                  style: AppTextStyles.font14Bold(context).copyWith(
                    color: AppColors.coffee,
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            Text(
              tr(context, LanguageKey.completeData),
              style: AppTextStyles.font22SemiBold(
                context,
              ).copyWith(color: AppColors.darkBlue),
            ),
            22.verticalSpace,
            Row(
              children: [
                Image.asset(
                  Assets.imagesAddImage,
                  scale: .9,
                ),
                14.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.grey600,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        tr(context, LanguageKey.uploadImage),
                        style: AppTextStyles.font12Regular(context).copyWith(
                          color: AppColors.background,
                        ),
                      ),
                    ),
                    11.verticalSpace,
                    Text(
                      tr(context, LanguageKey.addImageLessThan2MB),
                      style: AppTextStyles.font12Regular(context).copyWith(
                        color: AppColors.lightGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            34.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.yearsOfExperience)),
            10.verticalSpace,
            CustomTextField(
              labelText: tr(context, LanguageKey.enterYearsOfExperience),
              keyboardType: TextInputType.number,
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.introduction)),
            10.verticalSpace,
            CustomTextField(
              maxLines: 5,
              labelText: tr(context, LanguageKey.enterIntroduction),
              keyboardType: TextInputType.text,
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.proofOfProfessionalPractice)),
            10.verticalSpace,
            UploadButton(
              title: tr(context, LanguageKey.attachProofOfProfessionalPractice),
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.attachCertificates)),
            10.verticalSpace,
            UploadButton(
              title: tr(context, LanguageKey.attachCertificates),
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.attachCertificates)),
            10.verticalSpace,
            UploadButton(
              icon: Icon(
                Icons.add,
                color: AppColors.coffee,
                size: 30.sp,
              ),
              title: tr(context, LanguageKey.addExperiences),
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.qualifications)),
            10.verticalSpace,
            CustomTextField(
              labelText: tr(context, LanguageKey.qualifications),
              keyboardType: TextInputType.text,
            ),
            32.verticalSpace,
            CustomButton(
              yPadding: 14.h,
              borderRadius: 13.r,
              text: tr(context, LanguageKey.signUp),
              onPressed: (){
                context.pushReplacementNamed(Routes.otpScreen);
              },
            ),
            30.verticalSpace,

          ],
        ),
      ),
    );
  }
}
