

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mashura/core/helpers/extensions.dart';

import '../../core/routing/routes.dart';

class SplashData {
  Timer? _timer;

  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<double> sizeAnimation;

  void loadSplash(BuildContext context, TickerProviderStateMixin vsync) {
    _initAnimationsControllers(vsync);
    animationController.forward();
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _timer = Timer(
          const Duration(seconds: 3),
              () => context.pushReplacementNamed(Routes.changeLanguage),
        );
      }
    });
  }

  void _initAnimationsControllers(TickerProviderStateMixin vsync) {
    animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: vsync,
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut, // Fade animation from 0.0 to 0.5
      ),
    );

    sizeAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticInOut,
        // Size animation from 0.5 to 1.0
      ),
    );
  }

  void disposeSplash() {
    animationController.dispose();
    _timer?.cancel();
  }
}
