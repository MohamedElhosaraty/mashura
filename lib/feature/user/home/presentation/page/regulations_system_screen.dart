import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/widgets/search_field.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_expansion_tile.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/language_key.dart';

class RegulationsSystemScreen extends StatelessWidget {
  const RegulationsSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.moreWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                25.verticalSpace,
                CustomAppBar(
                  title: tr(context, LanguageKey.guideToRegulationsAndRules),
                ),
                25.verticalSpace,
                SearchField(
                  hintText: tr(
                    context,
                    LanguageKey.searchForLegislationOrRegulations,
                  ),
                ),
                21.verticalSpace,
                CustomExpansionTile(
                    title: tr(context, LanguageKey.commercialLaw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Divider(),
                        ),
                        12.verticalSpace,
                        Text(
                          tr(context, LanguageKey.commercialLawSystem),
                          style: AppTextStyles.font16Regular(context),
                        ),
                        20.verticalSpace,
                        Text(
                          tr(context, LanguageKey.commercialLawSystem),
                          style: AppTextStyles.font16Regular(context),
                        ),
                        20.verticalSpace,
                        Text(
                          tr(context, LanguageKey.commercialLawSystem),
                          style: AppTextStyles.font16Regular(context),
                        ),
                        20.verticalSpace,
                      ],
                    ),
                ),
                24.verticalSpace,
                CustomExpansionTile(
                  title: tr(context, LanguageKey.employmentLaw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Divider(),
                      ),
                      12.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomExpansionTile(
                  title: tr(context, LanguageKey.cityLaw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Divider(),
                      ),
                      12.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomExpansionTile(
                  title: tr(context, LanguageKey.personalLaw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Divider(),
                      ),
                      12.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomExpansionTile(
                  title: tr(context, LanguageKey.trafficLaw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Divider(),
                      ),
                      12.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomExpansionTile(
                  title: tr(context, LanguageKey.housingLaw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Divider(),
                      ),
                      12.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                      Text(
                        tr(context, LanguageKey.commercialLawSystem),
                        style: AppTextStyles.font16Regular(context),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
