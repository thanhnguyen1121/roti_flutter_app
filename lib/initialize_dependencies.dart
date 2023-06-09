import 'package:auth_nav/auth_nav.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application/data/repositories/post_repository_impl.dart';
import 'package:flutter_application/domain/entity/authentication_model.dart';
import 'package:flutter_application/domain/repository/auth_repository.dart';
import 'package:flutter_application/domain/repository/post_repository.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:oauth2_dio/oauth2_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/local/local_service.dart';
import 'data/dto/dto.dart';
import 'data/repositories/repositories.dart';
import 'env.dart';

Future initializeDependencies() async {
  Dio dio = Dio(BaseOptions(baseUrl: Env.instance.baseURL));
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  GetIt.instance.registerSingleton(dio);

  GetIt.instance.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  GetIt.instance.registerSingleton<PostRepository>(PostRepositoryImpl());

  //region Local Service
  GetIt.instance.registerSingleton(await SharedPreferences.getInstance());

  GetIt.instance.registerSingleton(LocalService());
  //endregion

  //region OAuth Manager
  Oauth2Manager<AuthenticationModel> _oauth2manager = Oauth2Manager<
      AuthenticationModel>(
      currentValue: GetIt.instance.get<LocalService>().getAuthenticationModel(),
      onSave: (value) {
        GetIt.instance.get<LocalService>().saveAuth(value);
      });

  GetIt.instance
      .registerSingleton<Oauth2Manager<AuthenticationModel>>(_oauth2manager);

  dio.interceptors.add(
    Oauth2Interceptor(
      dio: GetIt.instance.get<Dio>(),
      oauth2Dio: Dio(BaseOptions(baseUrl: dio.options.baseUrl)),
      pathRefreshToken: 'auth/refresh-token',
      parserJson: (json) {
        return AuthenticationDto.fromJson(json as Map<String, dynamic>);
      },
      tokenProvider: _oauth2manager,
    ),
  );
  //endregion

  GetIt.instance.registerSingleton(AuthNavigationBloc());

  GetIt.instance.registerSingleton(AuthBloc());
}
