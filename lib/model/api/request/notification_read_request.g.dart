// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_read_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationReadRequest _$NotificationReadRequestFromJson(
    Map<String, dynamic> json) {
  return NotificationReadRequest(
    notificationId: json['notification_id'] as int,
  );
}

Map<String, dynamic> _$NotificationReadRequestToJson(
        NotificationReadRequest instance) =>
    <String, dynamic>{
      'notification_id': instance.notificationId,
    };
