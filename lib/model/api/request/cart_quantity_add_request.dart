import 'package:json_annotation/json_annotation.dart';

part 'cart_quantity_add_request.g.dart';

@JsonSerializable()
class CartQuantityAddRequest {
  @JsonKey(name: "user_cart_id")
  final int userCartId ;


  CartQuantityAddRequest(this.userCartId);

  factory CartQuantityAddRequest.fromJson(Map<String, dynamic> json) =>
      _$CartQuantityAddRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CartQuantityAddRequestToJson(this);
}
