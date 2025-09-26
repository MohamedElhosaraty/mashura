import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_drop_down_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/language_key.dart';

class CustomTapBarItem extends StatefulWidget {
  const CustomTapBarItem({super.key});

  @override
  State<CustomTapBarItem> createState() => _CustomTapBarItemState();
}

class _CustomTapBarItemState extends State<CustomTapBarItem> {

  late String city;
  final List<String> someCities = [
    'القاهرة',
    'الاسكندرية',
    'الجيزة',
    'المنصورة',
    'الاسماعيلية',
  ];

 late String specialty;
  final List<String> someSpecialty = [
    'قانون',
    'حقوق',
    'اقتصاد',
    'اجتماعيات',
    'ادارات',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomDropDownWidget(
            bgColor: AppColors.neutral,
            textStyle: AppTextStyles.font14Regular(context).copyWith(
                color: AppColors.lightGrey),
            onChanged: (value) {
              city = value;
            },
            content: someCities,
            colorIcon: AppColors.lightGrey,
            child: Text(
              tr(context, LanguageKey.city),
              style: AppTextStyles.font14Regular(context).copyWith(
                color: AppColors.lightGrey,
              ),
            ),
          ),
        ),
        10.horizontalSpace,
        Expanded(
          child: CustomDropDownWidget(
            textStyle: AppTextStyles.font14Regular(context).copyWith(
                color: AppColors.lightGrey),
            onChanged: (value) {
              specialty = value;
            },
            content: someSpecialty,
            bgColor: AppColors.neutral,
            colorIcon: AppColors.lightGrey,
            child: Text(
              tr(context, LanguageKey.theSpecialty),
              style: AppTextStyles.font14Regular(context).copyWith(
                color: AppColors.lightGrey,
              ),
            ),
          ),
        ),
        10.horizontalSpace,
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25 ,vertical: 11),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesSearch,
                ),
                8.horizontalSpace,
                Text(
                  tr(context, LanguageKey.search),
                  style: AppTextStyles.font14SemiBold(context).copyWith(
                    color: AppColors.background,
                  ),
                ),
              ],
            ),
          ),
        ),


      ],
    );
  }
}
