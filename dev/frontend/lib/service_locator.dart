import 'package:frontend/core/network/dio_client.dart';
import 'package:frontend/data/repository/auth.dart';
import 'package:frontend/data/source/auth_api_service.dart';
import 'package:frontend/domain/repository/auth.dart';
import 'package:frontend/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {

  sl.registerSingleton<DioClient>(DioClient());

  //Service
  sl.registerSingleton<AuthApiService>(
    AuthApiServiceImpl()
  );

  //Repositories
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  //UseCases
  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

}