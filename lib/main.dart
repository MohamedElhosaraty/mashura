import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashura/core/helpers/extensions.dart';
import 'package:mashura/mashura.dart';
import 'core/api/dio_factory.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_prefs_keys.dart';
import 'core/observer/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait<void>([ScreenUtil.ensureScreenSize(),  setupGetIt(), DioFactory.init()]);
  Bloc.observer = MyBlocObserver();
  await checkIfLoggedInUser();
  runApp(const MashuraApp());
}

checkIfLoggedInUser() async {
  String? userToken =
  await SharedPrefHelper.getSecuredString(SharedPrefsKeys.tokenKey);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

