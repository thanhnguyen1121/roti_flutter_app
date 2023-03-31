import 'dart:convert';

import 'package:flutter_application/data/dto/authentication_dto.dart';
import 'package:flutter_application/domain/entity/authentication_model.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalService {
  final String kKeyAuth = 'key_auth';

  //NOTE: List key not delete when user logout
  final List<String> keyExcludes = [];

  final SharedPreferences sharedPreferences = GetIt.instance.get();

  bool isAuthorized() {
    return sharedPreferences.containsKey(kKeyAuth);
  }

  AuthenticationModel? getAuthenticationModel() {
    if (isAuthorized()) {
      return AuthenticationDto.fromJson(
          json.decode(sharedPreferences.getString(kKeyAuth)!));
    } else {
      return null;
    }
  }

  Future saveAuth(AuthenticationModel? authenticationModel) {
    if (authenticationModel == null) {
      return clear();
    } else {
      return sharedPreferences.setString(kKeyAuth,
          json.encode((authenticationModel as AuthenticationDto).toJson()));
    }
  }

  Future clear() async {
    final keys = sharedPreferences.getKeys();
    keys.removeAll(keyExcludes);
    for (final key in keys) {
      await sharedPreferences.remove(key);
    }
  }
}
