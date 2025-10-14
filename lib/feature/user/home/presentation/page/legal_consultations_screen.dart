import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/feature/user/home/presentation/widget/custom_legal_consultions_item.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/language_key.dart';

class LegalConsultationsScreen extends StatelessWidget {
  const LegalConsultationsScreen({super.key});

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
              CustomAppBar(
                title: tr(context, LanguageKey.legalConsultations),
              ),
              25.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      context.pushNamed(Routes.section);
                    },
                      child: CustomLegalConsultionsItem(title: 'القسم الاول',)),
                  InkWell(
                      onTap: (){
                        context.pushNamed(Routes.section);
                      },
                      child: CustomLegalConsultionsItem(title: 'القسم الثاني',)),
                  InkWell(
                      onTap: (){
                        context.pushNamed(Routes.section);
                      },
                      child: CustomLegalConsultionsItem(title: 'القسم الثالث',)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
