import 'package:dartz/dartz.dart';
import 'package:frontend/core/usecase/usecase.dart';
import 'package:frontend/data/models/signup_req_params.dart';
import 'package:frontend/domain/repository/auth.dart';
import 'package:frontend/service_locator.dart';

class SignupUseCase implements Usecase<Either, SignupReqParams>{

  @override
  Future<Either> call({SignupReqParams ? param}) async {
    return sl<AuthRepository>().signup(param!);
    
  }

  
}