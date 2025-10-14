import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/search_field.dart';
import '../../../../../generated/language_key.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.moreWhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                25.verticalSpace,
                CustomAppBar(
                  title: tr(context, LanguageKey.commercialCompaniesLaw),
                ),
                7.verticalSpace,
                RichText(
                    text: TextSpan(
                    text: tr(context, LanguageKey.lastUpdate),
                    style: AppTextStyles.font12Regular(context).copyWith(color: AppColors.grey100),
                children: [
                  TextSpan(
                    text: '20/10/2023',
                    style: AppTextStyles.font12Regular(context).copyWith(color: AppColors.grey100),
                  ),
                ])),
                5.verticalSpace,
                RichText(
                    text: TextSpan(
                    text: tr(context, LanguageKey.issueDate),
                    style: AppTextStyles.font12Regular(context).copyWith(color: AppColors.darkGrey2),
                children: [
                  TextSpan(
                    text: '20/10/2023',
                    style: AppTextStyles.font12Regular(context).copyWith(color: AppColors.darkGrey2),
                  ),
                ])),
                21.verticalSpace,
                SearchField(
                  hintText: tr(
                    context,
                    LanguageKey.search,
                  ),
                ),
                34.verticalSpace,
                TabBar(
                  labelColor: AppColors.coffee3,
                  unselectedLabelColor: Colors.black,
                  labelStyle: AppTextStyles.font16Regular(context),
                  indicatorColor: AppColors.coffee3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                        text: tr(context, LanguageKey.materials)),
                    Tab(
                        text: tr(context, LanguageKey.attachments)),
                  ],
                ),
                Expanded(
                  child:  TabBarView(
                    children: [
                        Container(
                          padding: const EdgeInsets.all( 20.0),
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          decoration: BoxDecoration(
                            color: AppColors.neutral,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Text("attachments",style:
                          AppTextStyles.font16Regular(context),),
                          ),
                      Container(
                        padding: const EdgeInsets.all( 20.0),
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.neutral,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text("Materials",style:
                        AppTextStyles.font16Regular(context),),),
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
