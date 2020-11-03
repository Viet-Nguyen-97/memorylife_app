// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    json['id'] as int,
    json['title'] as String,
    json['content'] as String,
    json['image'] as String,
    json['datecreate'] as String,
    json['timecreate'] as String,
    json['localX'] as String,
    json['localY'] as String,
    json['activeId'] as int,
    json['feelId'] as int,
    json['userId'] as int,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'datecreate': instance.date,
      'timecreate': instance.time,
      'localX': instance.localX,
      'localY': instance.localY,
      'activeId': instance.activeId,
      'feelId': instance.feelId,
      'userId': instance.userId,
    };
