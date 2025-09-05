import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/localization/set_localization.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'feature/change_language/cubit/change_language_cubit.dart';

class MashuraApp extends StatelessWidget {
  const MashuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: BlocProvider(
        create: (context) => ChangeLanguageCubit(),
        child: BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
          builder: (context, state) {
            Locale appLocale = const Locale('ar', 'EG');

            if (state is ChangeLanguageSuccess) {
              appLocale = state.language;
            }
            return MaterialApp(
              title: 'Mashura',
              key: ValueKey(appLocale.languageCode),
              locale: appLocale,
              supportedLocales: const [
                Locale('en', 'US'),
                Locale('ar', 'EG'),
              ],
              localizationsDelegates: const [
                SetLocalization.localizationsDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: ThemeData(
                primaryColor: Colors.blue,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splashScreen,
              // isLoggedInUser ? Routes.mainScreen : Routes
              //     .onBoardingScreen,
              onGenerateRoute: AppRouter.generateRoute,
            );
          },
        ),
      ),
    );
  }
}
