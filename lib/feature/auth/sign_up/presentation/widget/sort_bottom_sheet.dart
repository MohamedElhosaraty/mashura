import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/widgets/custom_text_field.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/language_key.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          27.verticalSpace,
          Text(
            tr(context, LanguageKey.experiences),
            style: AppTextStyles.font18SemiBold(context).copyWith(
                color: AppColors.moreBlack
            ),),
          5.verticalSpace,
          Text(
            tr(context, LanguageKey.maxExperiences),
            style: AppTextStyles.font10Regular(context).copyWith(
                color: AppColors.darkGrey
            ),),
          13.verticalSpace,
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  labelText: tr(context, LanguageKey.writeAboutYourExperience),
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 12),
                    child: Text(
                      "50 ${tr(context, LanguageKey.character)}",
                      style: TextStyle(color: Colors.brown, fontSize: 14),
                    ),
                  ),
                ),
              ),
              14.horizontalSpace,
              Icon(
                Icons.delete_outline,
                size: 30,
                color: AppColors.red,
              ),
            ],
          ),
          8.verticalSpace,
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  labelText: tr(context, LanguageKey.exampleHereForExperience),
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 12),
                    child: Text(
                      "50 ${tr(context, LanguageKey.character)}",
                      style: TextStyle(color: Colors.brown, fontSize: 14),
                    ),
                  ),

                ),
              ),
              14.horizontalSpace,
              Icon(
                Icons.delete_outline,
                size: 30,
                color: AppColors.red,
              ),
            ],
          ),
          19.verticalSpace,
          Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.add,
                    color: AppColors.coffee,
                    size: 25.sp,
                  )),
              8.horizontalSpace,
              Text(
                tr(context, LanguageKey.add),
                style: AppTextStyles.font20SemiBold(context).copyWith(
                    color: AppColors.moreBlack
                ),),

            ],
          ),
          31.verticalSpace,
          Row(
            children: [
              Expanded(
                flex: 2,
                child: CustomButton(
                  yPadding: 14.h,
                  borderRadius: 13.r,
                  bgColor: AppColors.primaryColor,
                  onPressed: (){

                  },
                  child: Text(
                    tr(context, LanguageKey.save),
                    style: AppTextStyles.font20SemiBold(context).copyWith(
                        color: AppColors.background
                    ),),
                ),
              ),
              20.horizontalSpace,
              Expanded(
                child: CustomButton(
                  yPadding: 14.h,
                  borderRadius: 12.r,
                  bgColor: AppColors.moreWhite,
                  onPressed: (){},
                  child: Text(
                    tr(context, LanguageKey.cancel),
                    style: AppTextStyles.font16Regular(context).copyWith(
                        color: AppColors.black
                    ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}