
import 'package:json_annotation/json_annotation.dart';

part 'register_app_request.g.dart';
@JsonSerializable()
class RegisterAppRequest {
  @JsonKey(name: "email_or_phone")
  final String emailOrPhone;
  final String password;
  @JsonKey(name: "confirm_password")
  final String confirmPassword;

  RegisterAppRequest({this.emailOrPhone, this.password, this.confirmPassword});

  factory RegisterAppRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterAppRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterAppRequestToJson(this);
}