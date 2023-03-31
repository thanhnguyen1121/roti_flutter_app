import 'package:json_annotation/json_annotation.dart';
import 'package:oauth2_dio/oauth2_dio.dart';
import 'package:flutter_application/domain/entity/authentication_model.dart';
part 'authentication_dto.g.dart';

@JsonSerializable()
class AuthenticationDto extends AuthenticationModel{
  @override
  final String accessToken;
  @override
  final String refreshToken;

  AuthenticationDto(this.accessToken, this.refreshToken);

  factory AuthenticationDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationDtoToJson(this);

  @override
  String get mAccessToken => accessToken;

  @override
  String get mRefreshToken => refreshToken;
}
