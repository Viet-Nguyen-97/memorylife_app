import 'package:json_annotation/json_annotation.dart';

part 'cart_add_request.g.dart';

@JsonSerializable()
class CartAddRequest {
  @JsonKey(name: "product_id")
  final int productId;

  @JsonKey(name: "color_id")
  final int colorId;

  @JsonKey(name: "size_id")
  final int sizeId;

  @JsonKey(name: "quantity")
  final int quantity;


  CartAddRequest(this.productId, this.colorId, this.sizeId, this.quantity);

  factory CartAddRequest.fromJson(Map<String, dynamic> json) =>
      _$CartAddRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CartAddRequestToJson(this);
}
