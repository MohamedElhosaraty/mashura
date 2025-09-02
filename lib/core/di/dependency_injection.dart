import 'package:get_it/get_it.dart';

import '../api/api_manager.dart';
import '../api/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // 🔧 Core
  getIt.registerLazySingleton<ApiManager>(
    () => ApiManager(dio: DioFactory.getDio()),
  );

  // 📦 Data Sources
  // getIt.registerLazySingleton<LoginDataSources>(
  //   () => LoginDataSourcesImpl(getIt<ApiManager>()),
  // );


  // 📚 Repositories
  // getIt.registerLazySingleton<LoginRepo>(
  //   () => LoginRepoImpl(getIt<LoginDataSources>()),
  // );


  // ✅ Use Cases
  // getIt.registerLazySingleton<LoginUsecase>(
  //   () => LoginUsecase(getIt<LoginRepo>()),
  // );



  // 🧠 Cubits
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginUsecase>()));
  // getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpUsecase>()));
  //
  // getIt.registerFactory<HomeCubit>(
  //   () => HomeCubit(getIt<HomeUsecase>()),
  // );
  //
  // getIt.registerLazySingleton<SearchCubit>(
  //   () => SearchCubit(getIt<SearchUsecase>()),
  // );



}
