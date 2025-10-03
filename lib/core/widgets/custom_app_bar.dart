import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/change_language/cubit/change_language_cubit.dart';
import '../../feature/change_language/cubit/change_language_state.dart';
import '../../generated/assets.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.coffee2.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child:state.language == Locale("en", "US") ?  Image.asset(
                   Assets.imagesArrowRight ,
                  scale: 1.9,
                  color: AppColors.coffee2,
                ) : Image.asset(
                  Assets.imagesArrow ,
                  scale: 0.8,
                  color: AppColors.coffee2,
                ) ,
              );
            },
          ),
        ),
        17.horizontalSpace,
        Flexible(
          child: Text(
            title,
            overflow:  TextOverflow.ellipsis,
            style: AppTextStyles.font18SemiBold(context).copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ),
      ],
    );
  }
}
