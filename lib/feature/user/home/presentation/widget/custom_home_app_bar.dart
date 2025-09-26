import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/core/routing/routes.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.imagesLogo,
        ),
        Row(
          children: [
            Image.asset(
              Assets.imagesLocation,
            ),
            5.horizontalSpace,
            Text(
              tr(context, LanguageKey.riyadh),
              style: AppTextStyles.font12Bold(context),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primaryColor,),
          ],
        ),
        InkWell(
          onTap: (){
            context.pushNamed(Routes.notificationScreen);
          },
          child: Image.asset(
            Assets.imagesNotification,
          ),
        ),
      ],
    );
  }
}
