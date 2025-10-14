import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
import 'custom_section_item.dart';

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.moreWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              25.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: CustomAppBar(
                      title: "قسم التالت",
                    ),
                  ),
                  Row(
                    children:  [
                      Image.asset(
                        Assets.imagesFilterBy,
                        width: 20.w,
                        height: 20.h,
                      ),
                      5.horizontalSpace,
                      Text(
                        tr(context, LanguageKey.sortBy),
                        style: AppTextStyles.font16Regular(
                          context,
                        ).copyWith(color: AppColors.black),
                      ),
                    ],
                  )
                ],
              ),
              25.verticalSpace,
              Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => 20.verticalSpace,
                    itemCount: 2,
                    itemBuilder: (context, index) => const CustomSectionItem(),))
            ],
          ),
        ),
      ),
    );
  }
}
