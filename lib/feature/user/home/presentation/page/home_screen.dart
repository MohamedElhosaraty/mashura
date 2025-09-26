import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
import '../widget/custom_home_app_bar.dart';
import '../widget/custom_rate_item.dart';
import '../widget/custom_row_see_all.dart';
import '../widget/custom_services_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 23.0,left: 19),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                34.verticalSpace,
                CustomHomeAppBar(),
                48.verticalSpace,
                Text(
                  tr(context, LanguageKey.ourServices),
                  style: AppTextStyles.font16Regular(context),
                ),
                17.verticalSpace,
                CustomServicesItem(
                  onTap: (){},
                  title: tr(context, LanguageKey.legalConsultations),
                  imageString: Assets.imagesLegality,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  onTap: (){},
                  title: tr(context, LanguageKey.guideToRegulationsAndRules),
                  imageString: Assets.imagesRegulations,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  onTap: (){
                    context.pushNamed(Routes.justiceWritingScreen);
                  },
                  title: tr(context, LanguageKey.guideToWritingAndOfficialAuthorities),
                  imageString: Assets.imagesWrite,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  onTap: (){
                     context.pushNamed(Routes.comprehensionGuideScreen);
                  },
                  title: tr(context, LanguageKey.guideToLawFirms),
                  imageString: Assets.imagesWrite,
                ),
                21.verticalSpace,
                Container(
                  padding: const EdgeInsets.only(right: 7,left: 15,bottom: 7,top: 7),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            tr(context, LanguageKey.requestTheServiceNow),
                            style: AppTextStyles.font18SemiBold(context).copyWith(
                              color: AppColors.background,
                            ),
                          ),
                          3.verticalSpace,
                          Text(
                            tr(context, LanguageKey.bookYourAppointmentInAdvance),
                            style: AppTextStyles.font12Regular(context).copyWith(
                              color: AppColors.background,
                            ),
                          ),
                        ],
                      ),
                      6.horizontalSpace,
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child:Image.asset(
                            Assets.imagesCalendar),
                      ),
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomRowSeeAll(
                    title: tr(context, LanguageKey.mostRated) ,
                    onTap: (){}),
                13.verticalSpace,
                SizedBox(
                  height: 180.h,
                    child: ListView.builder(
                        itemCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => CustomRateItem(
                      name: tr(context, LanguageKey.mohamedElhosaraty),
                    )),
                  ),
                28.verticalSpace,
                CustomRowSeeAll(
                    title: tr(context, LanguageKey.nearestToYou) ,
                    onTap: (){}),
                10.verticalSpace,
                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => CustomRateItem(
                        name: tr(context, LanguageKey.mohamedElhosaraty),
                      )),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
