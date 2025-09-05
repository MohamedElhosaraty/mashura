import 'package:flutter/material.dart';
import 'package:mashura/core/routing/routes.dart';
import 'package:mashura/feature/auth/login/presentation/page/lawyer_login_screen.dart';
import 'package:mashura/feature/auth/login/presentation/page/user_login_screen.dart';
import 'package:mashura/feature/auth/sign_up/presentation/page/user_sign_up_screen.dart';
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

      case Routes.lawyerLoginScreen:
        return MaterialPageRoute(builder: (_) => const LawyerLoginScreen());

      case Routes.userLoginScreen:
        return MaterialPageRoute(builder: (_) => const UserLoginScreen());

      case Routes.userSignUpScreen:
        return MaterialPageRoute(builder: (_) => const UserSignUpScreen());
    }
    return null;
  }
}
