import 'package:flutter/material.dart';
import 'package:mashura/core/routing/routes.dart';
import 'package:mashura/feature/auth/login/presentation/page/login_screen.dart';
import 'package:mashura/feature/auth/sign_up/presentation/page/lawyer_sign_ups_screen_one.dart';
import 'package:mashura/feature/auth/sign_up/presentation/page/user_sign_up_screen.dart';
import 'package:mashura/feature/notification/presentation/page/notification_screen.dart';
import 'package:mashura/feature/splash/splash_screen.dart';

import '../../feature/auth/otp/presentation/page/otp_screen.dart';
import '../../feature/auth/sign_up/presentation/page/lawyer_sign_up_screen_two.dart';
import '../../feature/change_language/change_language_screen.dart';
import '../../feature/lawyer/main_screen/presentation/page/main_screen.dart';
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

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.userSignUpScreen:
        return MaterialPageRoute(builder: (_) => const UserSignUpScreen());

      case Routes.lawyerSignUpScreenOne:
        return MaterialPageRoute(builder: (_) => const LawyerSignUpsScreenOne());

        case Routes.lawyerSignUpScreenTwo:
        return MaterialPageRoute(builder: (_) => const LawyerSignUpScreenTwo());

        case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());


        case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());

        case Routes.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
    }
    return null;
  }
}
