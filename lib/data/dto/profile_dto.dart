import 'package:flutter_application/domain/entity/profile_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileDto extends ProfileModel {
  final String mUserName;

  ProfileDto(this.mUserName);

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);

  @override
  String? get userName => mUserName;
}
