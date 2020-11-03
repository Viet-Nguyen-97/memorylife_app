import 'package:json_annotation/json_annotation.dart';

part 'cart_remove_request.g.dart';

@JsonSerializable()
class CartRemoveRequest {
  @JsonKey(name: "user_cart_id")
  final int userCartId ;


  CartRemoveRequest(this.userCartId);

  factory CartRemoveRequest.fromJson(Map<String, dynamic> json) =>
      _$CartRemoveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CartRemoveRequestToJson(this);
}
