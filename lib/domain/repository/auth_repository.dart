import 'package:flutter_application/domain/entity/authentication_model.dart';
import 'package:flutter_application/domain/entity/profile_model.dart';

abstract class AuthRepository{
  Future<AuthenticationModel> login(String userName, String passWord);

  Future logout();

  Future<ProfileModel> profile();
}