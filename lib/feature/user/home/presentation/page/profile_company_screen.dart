import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_row_company.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_text_profile_company.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class ProfileCompanyScreen extends StatelessWidget {
  const ProfileCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.moreWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              24.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: CustomAppBar(title: ''),
              ),
              31.verticalSpace,
              Image.asset(
                Assets.imagesProfileCompany,
                fit: BoxFit.fill,),
              18.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Assets.imagesLocation,
                          color: AppColors.coffee3,
                        ),
                        4.horizontalSpace,
                        Text(
                          tr(context, LanguageKey.riyadh),
                          style: AppTextStyles.font12Regular(
                            context,
                          ).copyWith(color: AppColors.black),
                        ),
                        19.horizontalSpace,
                        Image.asset(Assets.imagesMedal),
                        4.horizontalSpace,
                        Text(
                          tr(context, LanguageKey.theSpecializationIsPlacedHere),
                          style: AppTextStyles.font12Regular(
                            context,
                          ).copyWith(color: AppColors.black),
                        ),
                      ],
                    ),
                    18.verticalSpace,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: AppColors.lightWhite,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          16.verticalSpace,
                          Text(
                            tr(context, LanguageKey.brief),
                            style: AppTextStyles.font14Bold(context),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 20,left: 4,right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextProfileCompany(
                                  title: tr(context, LanguageKey.theVision),
                                  subTitle: tr(context, LanguageKey.visionCompany),
                                ),
                                CustomTextProfileCompany(
                                  title: tr(context, LanguageKey.message),
                                  subTitle: tr(context, LanguageKey.messageCompany),
                                ),
                                CustomTextProfileCompany(
                                  title: tr(context, LanguageKey.quality),
                                  subTitle: tr(context, LanguageKey.qualityCompany),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    23.verticalSpace,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: AppColors.lightWhite,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          17.verticalSpace,
                          Text(
                            tr(context, LanguageKey.branches),
                            style: AppTextStyles.font14Bold(context),
                          ),
                          20.verticalSpace,
                          CustomRowCompany(
                              title: tr(context, LanguageKey.riyadh),
                          ),
                          13.verticalSpace,
                          CustomRowCompany(
                              title: tr(context, LanguageKey.theKingdomOfSaudiArabia),
                          ),
                          13.verticalSpace,
                          CustomRowCompany(
                            title: tr(context, LanguageKey.riyadh),
                          ),
                          13.verticalSpace,
                          CustomRowCompany(
                            title: tr(context, LanguageKey.theKingdomOfSaudiArabia),
                          ),
                          22.verticalSpace,
                        ],
                      ),
                    ),
                    30.verticalSpace,
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
