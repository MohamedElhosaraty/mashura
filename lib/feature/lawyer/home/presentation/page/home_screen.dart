import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/feature/lawyer/home/presentation/widget/custom_home_app_bar.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';
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
                  title: tr(context, LanguageKey.legalConsultations),
                  imageString: Assets.imagesLegality,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  title: tr(context, LanguageKey.guideToRegulationsAndRules),
                  imageString: Assets.imagesRegulations,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  title: tr(context, LanguageKey.guideToWritingAndOfficialAuthorities),
                  imageString: Assets.imagesWrite,
                ),
                11.verticalSpace,
                CustomServicesItem(
                  title: tr(context, LanguageKey.guideToLawFirms),
                  imageString: Assets.imagesWrite,
                ),
                21.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
