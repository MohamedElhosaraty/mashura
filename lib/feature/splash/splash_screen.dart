import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/generated/assets.dart';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () async {
      context.pushReplacementNamed(Routes.changeLanguage);


      // final token = await SharedPrefHelper.getSecuredString(SharedPrefsKeys.tokenKey);
      //
      // if (token != null && token.isNotEmpty) {
      //   context.pushReplacementNamed(Routes.mainScreen);
      // } else {
      //   context.pushReplacementNamed(Routes.onBoardingScreen);
      // }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(Assets.imagesSplash),
    );
  }
}
