import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';

class AppTextStyles {
  static const Color textColor =
      AppColors.primaryColor; // Assuming you still need AppColors

  static String getFontFamily(String fontFamily) {

    return fontFamily;
  }

  // Base style to reuse common properties
  static TextStyle baseStyle({

    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
    BuildContext? context,
    String fontFamily = "MadaniArabic",
  }) {

    return TextStyle(
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
    );
  }

  static TextStyle font22Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize22,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font22SemiBold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize22,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font18SemiBold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14SemiBold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font20SemiBold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font16Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font20Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
    fontStyle: FontStyle.normal,
    context: context,
  );

  static TextStyle font14Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font18Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font10Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font12Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14Bold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font12Bold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
    fontStyle: FontStyle.normal,
    context: context,
  );

}
