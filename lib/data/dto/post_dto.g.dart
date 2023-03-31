// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostDto _$PostDtoFromJson(Map<String, dynamic> json) => PostDto(
      mName: json['name'] as String?,
      mContent: json['content'] as String?,
    );

Map<String, dynamic> _$PostDtoToJson(PostDto instance) => <String, dynamic>{
      'name': instance.mName,
      'content': instance.mContent,
    };
