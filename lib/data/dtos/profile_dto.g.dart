// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDTO _$$_ProfileDTOFromJson(Map<String, dynamic> json) =>
    _$_ProfileDTO(
      id: json['id'] as int,
      username: json['username'] as String,
      fullname: json['fullname'] as String,
      phone: json['phone'] as String? ?? "",
      email: json['email'] as String? ?? "",
      bio: json['bio'] as String? ?? "",
    );

Map<String, dynamic> _$$_ProfileDTOToJson(_$_ProfileDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'email': instance.email,
      'bio': instance.bio,
    };
