import 'package:json_annotation/json_annotation.dart';

part 'cart_quantity_remove_request.g.dart';

@JsonSerializable()
class CartQuantityRemoveRequest {
  @JsonKey(name: "user_cart_id")
  final int userCartId ;


  CartQuantityRemoveRequest(this.userCartId);

  factory CartQuantityRemoveRequest.fromJson(Map<String, dynamic> json) =>
      _$CartQuantityRemoveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CartQuantityRemoveRequestToJson(this);
}
