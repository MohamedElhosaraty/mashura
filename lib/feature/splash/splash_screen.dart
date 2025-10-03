import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashura/feature/splash/splash_data.dart';

import '../../core/theming/app_colors.dart';
import '../../generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  final SplashData splashData = SplashData();
  @override
  void initState() {
    super.initState();
    splashData.loadSplash(context, this);
  }

  @override
  void dispose() {
    splashData.disposeSplash();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: AppColors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            Assets.imagesSplashBG,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            alignment: Alignment.center,
            color: AppColors.primaryColor.withOpacity(0.1),
          ),
          Center(
            child: AnimatedBuilder(
              animation: splashData.animationController,
              builder: (BuildContext context, Widget? child) {
                return Opacity(
                  opacity: splashData.fadeAnimation.value,
                  child: Transform.scale(
                    scale: splashData.sizeAnimation.value,
                    child: child,
                  ),
                );
              },
              child: Image.asset(
                Assets.imagesSplashLogo,
                height: 240.w,
                width: 240.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
