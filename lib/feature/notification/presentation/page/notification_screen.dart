import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/localization_methods.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../generated/language_key.dart';
import '../widget/custom_notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.moreWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              20.verticalSpace,
              CustomAppBar(
                  title: tr(context, LanguageKey.notifications),
                actions: Container(
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                        onPressed: (){},
                        icon: Icon( Icons.delete_outline,
                        size: 25.sp,
                        color: AppColors.red,)
                    ),
                ),
              ),
              28.verticalSpace,
              Expanded(
                child: ListView.separated(
                  itemCount: 15,
                  itemBuilder: (context, index) => const CustomNotificationItem(),
                  separatorBuilder: (context, index) => 12.verticalSpace,
                ),
              ),
            ],),
        ),
      ),
    );
  }
}
