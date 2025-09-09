import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/widgets/custom_phone_number_field.dart';
import 'package:mashura/core/widgets/custom_text_field.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_drop_down_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
import 'custom_text.dart';

class UserSignUpScreenBody extends StatefulWidget {
  const UserSignUpScreenBody({super.key});

  @override
  State<UserSignUpScreenBody> createState() => _UserSignUpScreenBodyState();
}

class _UserSignUpScreenBodyState extends State<UserSignUpScreenBody> {

  late String city;
  final List<String> someCities = [
    'القاهرة',
    'الاسكندرية',
    'الجيزة',
    'المنصورة',
    'الاسماعيلية',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            25.verticalSpace,
            Image.asset(
              Assets.imagesLogo,),
            16.verticalSpace,
            Text(
              tr(context, LanguageKey.registerNewAccount),
              style: AppTextStyles.font22SemiBold(
                context,
              ).copyWith(color: AppColors.darkBlue),
            ),
            50.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.name)),
            10.verticalSpace,
            CustomTextField(
              labelText: tr(context, LanguageKey.enterName),
              keyboardType: TextInputType.name,
            ),
            28.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.phoneNumber)),
            10.verticalSpace,
            CustomPhoneNumberField(),
            28.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.email)),
            10.verticalSpace,
            CustomTextField(
              labelText:  tr(context, LanguageKey.enterEmail),
              keyboardType: TextInputType.emailAddress,

            ),
             28.verticalSpace,
            CustomText(
                title: tr(context, LanguageKey.city)),
            10.verticalSpace,
            CustomDropDownWidget(
              onChanged: (value) {
                city = value;
              },
              content: someCities,
              colorIcon: AppColors.lightGrey,
              child: Text(
                tr(context, LanguageKey.chooseCity),
                style: AppTextStyles.font16Regular(context).copyWith(
                  color: AppColors.lightGrey,
                ),
              ),
            ),            75.verticalSpace,
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
            17.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tr(context, LanguageKey.alreadyHaveAccount),
                  style: AppTextStyles.font14Regular(
                    context,
                  ).copyWith(color: AppColors.darkBlue),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    tr(context, LanguageKey.log),
                    style: AppTextStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.coffee),
                  ),
                ),
              ],
            ),
            20.verticalSpace

          ],
        ),
      ),
    );
  }
}
