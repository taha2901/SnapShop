import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:snap_shop/features/home/data/repo/home_repo.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/register/data/repo/register_repo.dart';
import 'package:snap_shop/features/register/logic/register_cubit.dart';

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
  getit.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getit()));
  getit.registerFactory<RegisterCubit>(() => RegisterCubit(getit()));

  //home
  getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
  getit.registerFactory<HomeCubit>(() => HomeCubit(getit()));

}
