import 'package:flutter_application/domain/entity/post_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_dto.g.dart';

@JsonSerializable()
class PostDto extends PostModel {
  @JsonKey(name: 'name')
  String? mName;

  @JsonKey(name: 'content')
  String? mContent;

  PostDto({
    this.mName,
    this.mContent,
  });

  @override
  String? get content => mContent;

  @override
  String? get name => mName;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostDtoToJson(this);
}
