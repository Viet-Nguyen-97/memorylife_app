// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

newData _$newDataFromJson(Map<String, dynamic> json) {
  return newData(
    news: (json['list'] as List)
        ?.map(
            (e) => e == null ? null : News.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$newDataToJson(newData instance) => <String, dynamic>{
      'list': instance.news,
    };
