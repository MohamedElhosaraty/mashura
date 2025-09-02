import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class MashuraApp extends StatelessWidget {
  const MashuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,

          child: MaterialApp(
            title: 'DoClinic',
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
          ),
        );
  }
}
