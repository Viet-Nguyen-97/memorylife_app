// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_quantity_remove_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartQuantityRemoveRequest _$CartQuantityRemoveRequestFromJson(
    Map<String, dynamic> json) {
  return CartQuantityRemoveRequest(
    json['user_cart_id'] as int,
  );
}

Map<String, dynamic> _$CartQuantityRemoveRequestToJson(
        CartQuantityRemoveRequest instance) =>
    <String, dynamic>{
      'user_cart_id': instance.userCartId,
    };
