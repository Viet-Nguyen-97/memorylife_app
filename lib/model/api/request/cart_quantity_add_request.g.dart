// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_quantity_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartQuantityAddRequest _$CartQuantityAddRequestFromJson(
    Map<String, dynamic> json) {
  return CartQuantityAddRequest(
    json['user_cart_id'] as int,
  );
}

Map<String, dynamic> _$CartQuantityAddRequestToJson(
        CartQuantityAddRequest instance) =>
    <String, dynamic>{
      'user_cart_id': instance.userCartId,
    };
