// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['email'] as String,
    json['phone_number'] as String,
    json['avatar'] as String,
    json['background_image'] as String,
    json['date_of_birth'] as String,
    (json['point'] as num)?.toDouble(),
    json['currentRanking'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'background_image': instance.backgroundImage,
      'date_of_birth': instance.dateOfBirth,
      'point': instance.point,
      'currentRanking': instance.currentRanking,
    };
