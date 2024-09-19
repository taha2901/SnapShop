import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final getit = GetIt.instance;

Future<void> setUpGetIt() async {
  //dio & ApiServices
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));


  // signup
  // getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  // getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));

  // //home
  // getit.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  // getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
  // // getit.registerFactory<HomeCubit>(() => HomeCubit(getit()));
}
