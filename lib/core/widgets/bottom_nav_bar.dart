import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../../generated/language_key.dart';
import '../localization/localization_methods.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class MyBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      child: BottomNavigationBar(
        iconSize: 22,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgHomeOutline),
            activeIcon: Image.asset(
             Assets.imagesHome,
            ),
            label: tr(context, LanguageKey.home),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(Assets.imagesMyBooking,
            ),
            icon: SvgPicture.asset(Assets.svgMyBookingOutline,),
            label: tr(context, LanguageKey.myBooking),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(Assets.imagesProfile,
            ),
            icon: SvgPicture.asset(Assets.svgProfileOutline,),
            label: tr(context, LanguageKey.profile),
          ),
        ],
        unselectedItemColor: AppColors.moreBlack,
        selectedItemColor: AppColors.coffee,
        selectedLabelStyle: AppTextStyles.font14Regular(context),
        unselectedLabelStyle: AppTextStyles.font14Regular(context),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
