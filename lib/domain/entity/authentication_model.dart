import 'package:oauth2_dio/oauth2_manager.dart';

abstract class AuthenticationModel with OAuthInfoMixin  {
  String get mAccessToken;

  String get mRefreshToken;
}
