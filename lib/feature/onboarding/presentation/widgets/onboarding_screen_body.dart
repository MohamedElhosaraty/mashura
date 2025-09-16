import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/core/helpers/extensions.dart';
import '../../../../core/localization/localization_methods.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/utils/onboarding_list.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/language_key.dart';
import '../cubit/onboarding_cubit.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        var cubit = OnboardingCubit.get(context);
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: cubit.pageController,
                onPageChanged: (index) => cubit.changePage(index),
                itemCount: onboardingList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(onboardingList[index].image,
                      width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      32.verticalSpace,
                      Text(
                        tr(context, onboardingList[index].titleKey),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font22Regular(
                          context,
                        ).copyWith(color: AppColors.darkBlue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          left: 38.0,
                          right: 38.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            tr(context, onboardingList[index].descriptionKey),
                            textAlign: TextAlign.center,
                            style: AppTextStyles.font14Regular(
                              context,
                            ).copyWith(color: AppColors.grey2),
                          ),
                        ),
                      ),
                      51.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            onboardingList.length,
                                (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.only(right: 5),
                             width: 12.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                color:
                                cubit.currentIndex == index
                                    ? AppColors.primaryColor
                                    : AppColors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      51.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: cubit.currentIndex <
                  onboardingList.length - 1 ?
                        Row(
                          children: [
                            CustomButton(
                              borderRadius: 13.r,
                              yPadding: 18.h,
                              width: 125.w,
                              bgColor: AppColors.moreWhite,
                              onPressed: () {
                                context.pushReplacementNamed(
                                  Routes.loginScreen,
                                );
                              },
                              child: Text(
                                tr(context, LanguageKey.skip),
                                style: AppTextStyles.font16Regular(context).copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                            20.horizontalSpace,
                            CustomButton(
                              width: 190.w,
                              yPadding: 18.h,
                              bgColor: AppColors.coffee2,
                              borderRadius: 13.r,
                              onPressed: () {
                                if (cubit.currentIndex <
                                    onboardingList.length - 1) {
                                  cubit.nextPage();
                                } else {
                                  context.pushReplacementNamed(
                                    Routes.loginScreen,
                                  );
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    tr(context, LanguageKey.next),
                                    style: AppTextStyles.font20Regular(context).copyWith(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  10.horizontalSpace,
                                  Icon(
                                    Icons.arrow_forward,
                                  color: AppColors.primaryColor,
                                  size: 20,),
                                ],
                              ),
                            ),


                          ],
                        ) :
                        CustomButton(
                          bgColor: AppColors.primaryColor,
                          yPadding: 18.h,
                          borderRadius: 13.r,
                          onPressed: () {
                            context.pushReplacementNamed(
                              Routes.loginScreen,
                            );
                          },
                          child: Text(
                            tr(context, LanguageKey.startNow),
                            style: AppTextStyles.font20Regular(context).copyWith(
                              color: AppColors.background,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
