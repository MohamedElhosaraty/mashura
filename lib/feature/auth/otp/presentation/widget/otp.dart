import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/localization/localization_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/language_key.dart';


class Otp extends StatefulWidget {
  const Otp({super.key, required this.email});

  final String email;

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _otpController = TextEditingController();

  late Timer _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _start = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    if (mounted) {
      _timer.cancel();

      _otpController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            controller: _otpController,
            keyboardType: TextInputType.number,
            animationType: AnimationType.scale,
            enableActiveFill: true,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(21),
              fieldHeight: 58,
              fieldWidth: 58,
              inactiveColor: AppColors.neutral,
              disabledColor:  AppColors.neutral,
              inactiveFillColor: AppColors.neutral,
              errorBorderColor: AppColors.red,
            ),
          ),
        ),
        64.verticalSpace,
        Text(
          _start > 0 ? "0:${_start.toString().padLeft(2, '0')}" : "00:00",
          style: AppTextStyles.font14Regular(context).copyWith(
            color: AppColors.coffee2,
          ),
        ),
        8.verticalSpace,
        TextButton(
          onPressed: () {
            startTimer();
          },
          child: Text(
            tr(context, LanguageKey.resendTheCode),
            style: AppTextStyles.font14Regular(context).copyWith(
              decoration: TextDecoration.underline,
              color: AppColors.green,
            ),
          ),
        ),
      ],
    );
  }
}
