import 'package:flutter_application/data/datasource/remote/auth_api_service.dart';
import 'package:flutter_application/domain/entity/authentication_model.dart';
import 'package:flutter_application/domain/entity/profile_model.dart';
import 'package:flutter_application/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository{
  final authApiService = AuthApiService();

  @override
  Future<AuthenticationModel> login(String userName, String passWord) {
    return authApiService.login(userName, passWord);
  }

  @override
  Future logout() {
    return authApiService.logout();
  }

  @override
  Future<ProfileModel> profile() {
    return authApiService.profile();
  }
}