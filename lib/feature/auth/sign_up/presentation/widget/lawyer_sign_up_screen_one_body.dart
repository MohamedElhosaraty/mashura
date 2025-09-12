import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/core/widgets/custom_button.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_phone_number_field.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/upload_button.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
import 'custom_text.dart';

class LawyerSignUpScreenOneBody extends StatelessWidget {
  const LawyerSignUpScreenOneBody({super.key});

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
                  "${tr(context,LanguageKey.step)} 1 ${tr(context, LanguageKey.from)} 2",
                  style: AppTextStyles.font14Bold(context).copyWith(
                    color: AppColors.coffee,
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            Text(
              tr(context, LanguageKey.registerNewAccount),
              style: AppTextStyles.font22SemiBold(
                context,
              ).copyWith(color: AppColors.darkBlue),
            ),
            30.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.name)),
            10.verticalSpace,
            CustomTextField(
              labelText: tr(context, LanguageKey.enterName),
              keyboardType: TextInputType.name,
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.phoneNumber)),
            10.verticalSpace,
            CustomPhoneNumberField(),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.email)),
            10.verticalSpace,
            CustomTextField(
              labelText:  tr(context, LanguageKey.enterEmail),
              keyboardType: TextInputType.emailAddress,
        
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.attachTheId)),
            10.verticalSpace,
            UploadButton(
              title: tr(context, LanguageKey.attachTheId),
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.dateOfBirth)),
            10.verticalSpace,
            CustomTextField(
              labelText:  tr(context, LanguageKey.enterDateOfBirth),
              keyboardType: TextInputType.number,
        
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.theSpecialty)),
            10.verticalSpace,
            CustomTextField(
              labelText:  tr(context, LanguageKey.theSpecialty),
              keyboardType: TextInputType.text,
        
            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.city)),
            10.verticalSpace,
            CustomTextField(
              labelText:  tr(context, LanguageKey.enterCity),
              keyboardType: TextInputType.emailAddress,

            ),
            25.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.theType)),
            10.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    yPadding: 18.h,
                    bgColor: AppColors.moreWhite,
                    borderRadiusColor: AppColors.coffee,
                    onPressed: (){},
                    text: tr(context, LanguageKey.male),
                    textStyle:  AppTextStyles.font14Regular(context).copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                ),
                22.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    yPadding: 18.h,
                    bgColor: AppColors.moreWhite,
                    onPressed: (){},
                    text: tr(context, LanguageKey.female),
                    textStyle:  AppTextStyles.font14Regular(context).copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            66.verticalSpace,
            CustomButton(
              yPadding: 14.h,
              borderRadius: 13.r,
              text: tr(context, LanguageKey.complete),
              onPressed: (){
                context.pushReplacementNamed(Routes.lawyerSignUpScreenTwo);
              },
            ),
            30.verticalSpace,

          ],
        ),
      ),
    );
  }
}
