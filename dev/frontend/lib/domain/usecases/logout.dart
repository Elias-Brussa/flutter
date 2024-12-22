import 'package:frontend/core/usecase/usecase.dart';
import 'package:frontend/domain/repository/auth.dart';
import 'package:frontend/service_locator.dart';
import 'package:dartz/dartz.dart';

class LogoutUseCase implements Usecase<Either, dynamic> {

  @override
  Future<Either> call({param}) async {
    return await sl<AuthRepository>().logout();
  }

}