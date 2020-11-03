import 'package:json_annotation/json_annotation.dart';

part 'ward_request.g.dart';
@JsonSerializable()
class WardRequest {
  @JsonKey(name: "district_id")
  final int districtId;

  WardRequest({this.districtId});

  factory WardRequest.fromJson(Map<String, dynamic> json) =>
      _$WardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$WardRequestToJson(this);
}