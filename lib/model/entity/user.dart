import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  String name;
  String email;
  @JsonKey(name: "phone_number")
  String phoneNumber;
  String avatar;
  @JsonKey(name: "background_image")
  String backgroundImage;
  @JsonKey(name: "date_of_birth")
  String dateOfBirth;
  double point;
  int currentRanking;

  User(this.name, this.email, this.phoneNumber, this.avatar,
      this.backgroundImage, this.dateOfBirth, this.point, this.currentRanking);

  @override
  String toString() {
    return 'User{name: $name, email: $email, phoneNumber: $phoneNumber, avatar: $avatar, backgroundImage: $backgroundImage, dateOfBirth: $dateOfBirth, point: $point, currentRanking: $currentRanking}';
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object> get props => [
        name,
        email,
        phoneNumber,
        avatar,
        backgroundImage,
        dateOfBirth,
        point,
        currentRanking
      ];
}
