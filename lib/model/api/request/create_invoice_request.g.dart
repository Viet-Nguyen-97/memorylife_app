// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(Map<String, dynamic> json) {
  return CreateInvoiceRequest(
    (json['user_cart_id'] as List)?.map((e) => e as int)?.toList(),
    json['address_id'] as int,
    json['voucher_id'] as String,
    json['promotion_id'] as String,
    json['bank_id'] as String,
    json['shipping_unit_id'] as int,
    json['percent_off'] as String,
    json['payment_type'] as int,
    json['delivery_time'] as String,
    json['note'] as String,
  );
}

Map<String, dynamic> _$CreateInvoiceRequestToJson(
        CreateInvoiceRequest instance) =>
    <String, dynamic>{
      'user_cart_id': instance.userCartId,
      'address_id': instance.addressId,
      'voucher_id': instance.voucherId,
      'promotion_id': instance.promotionId,
      'bank_id': instance.bankId,
      'shipping_unit_id': instance.shippingUnitId,
      'percent_off': instance.percentOff,
      'payment_type': instance.paymentType,
      'delivery_time': instance.deliveryTime,
      'note': instance.note,
    };
