import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/core/networking/api_service.dart';
import 'package:myapp/core/networking/dio_factory.dart';
import 'package:myapp/features/login_screen/data/repos/login_repo.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_cubit.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async{

  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}