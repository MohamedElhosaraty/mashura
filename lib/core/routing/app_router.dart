import 'package:flutter/material.dart';
import 'package:mashura/core/routing/routes.dart';
import 'package:mashura/feature/splash/splash_screen.dart';

import '../../feature/change_language/change_language_screen.dart';
import '../../feature/onboarding/presentation/pages/onboarding_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.changeLanguage:
        return MaterialPageRoute(builder: (_) => const ChangeLanguageScreen());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    }
    return null;
  }
}
