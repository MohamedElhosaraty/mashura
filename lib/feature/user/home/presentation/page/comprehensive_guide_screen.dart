import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_comprehensive_guide_item.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_tap_bar_item.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/language_key.dart';

class ComprehensiveGuideScreen extends StatelessWidget {
  const ComprehensiveGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.moreWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            children: [
              20.verticalSpace,
              CustomAppBar(
                title: tr(context, LanguageKey.guideToLawFirms),
              ),
              25.verticalSpace,
              CustomTapBarItem(),
              31.verticalSpace,
              Expanded(
                child:GridView.builder(
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                         mainAxisExtent: 210.h,
                      mainAxisSpacing: 13.h,
                      crossAxisSpacing: 13.w,
                          ),
                    itemCount: 15,
                    itemBuilder: (context, index) => const CustomComprehensiveGuideItem(),
                ),
              ),
              20.verticalSpace,
            ],),
        ),
      ),
    );
  }
}
