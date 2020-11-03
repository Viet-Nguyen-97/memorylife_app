// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartAddRequest _$CartAddRequestFromJson(Map<String, dynamic> json) {
  return CartAddRequest(
    json['product_id'] as int,
    json['color_id'] as int,
    json['size_id'] as int,
    json['quantity'] as int,
  );
}

Map<String, dynamic> _$CartAddRequestToJson(CartAddRequest instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'color_id': instance.colorId,
      'size_id': instance.sizeId,
      'quantity': instance.quantity,
    };
