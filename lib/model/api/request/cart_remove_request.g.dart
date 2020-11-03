// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_remove_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartRemoveRequest _$CartRemoveRequestFromJson(Map<String, dynamic> json) {
  return CartRemoveRequest(
    json['user_cart_id'] as int,
  );
}

Map<String, dynamic> _$CartRemoveRequestToJson(CartRemoveRequest instance) =>
    <String, dynamic>{
      'user_cart_id': instance.userCartId,
    };
