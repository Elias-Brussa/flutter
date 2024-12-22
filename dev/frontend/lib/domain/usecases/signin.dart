import 'package:frontend/core/usecase/usecase.dart';
import 'package:frontend/data/models/signin_req_params.dart';
import 'package:frontend/domain/repository/auth.dart';
import 'package:frontend/service_locator.dart';
import 'package:dartz/dartz.dart';

class SigninUseCase implements Usecase<Either, SigninReqParams> {

  @override
  Future<Either> call({SigninReqParams ? param}) async {
    return sl<AuthRepository>().signin(param!);
  }
  
}