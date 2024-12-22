import 'package:frontend/core/usecase/usecase.dart';
import 'package:frontend/domain/repository/auth.dart';
import 'package:frontend/service_locator.dart';

class IsLoggedInUseCase implements Usecase<bool, dynamic> {

  @override
  Future<bool> call({dynamic param}) async {
    return sl<AuthRepository>().isLoggedIn();
  }
  
}