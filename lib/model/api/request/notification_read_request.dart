import 'package:json_annotation/json_annotation.dart';

part 'notification_read_request.g.dart';

@JsonSerializable()
class NotificationReadRequest {
  @JsonKey(name: "notification_id")
  final int notificationId;

  NotificationReadRequest({this.notificationId});

  factory NotificationReadRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationReadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationReadRequestToJson(this);
}