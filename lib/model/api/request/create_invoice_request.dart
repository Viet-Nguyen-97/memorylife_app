import 'package:json_annotation/json_annotation.dart';

part 'create_invoice_request.g.dart';

@JsonSerializable()
class CreateInvoiceRequest {
  @JsonKey(name: "user_cart_id")
  final List<int> userCartId;
  @JsonKey(name: "address_id")
  final int addressId;
  @JsonKey(name: "voucher_id")
  final String voucherId;
  @JsonKey(name: "promotion_id")
  final String promotionId;
  @JsonKey(name: "bank_id")
  final String bankId;
  @JsonKey(name: "shipping_unit_id")
  final int shippingUnitId;
  @JsonKey(name: "percent_off")
  final String percentOff;
  @JsonKey(name: "payment_type")
  final int paymentType;
  @JsonKey(name: "delivery_time")
  final String deliveryTime;
  @JsonKey(name: "note")
  final String note;


  CreateInvoiceRequest(
      this.userCartId,
      this.addressId,
      this.voucherId,
      this.promotionId,
      this.bankId,
      this.shippingUnitId,
      this.percentOff,
      this.paymentType,
      this.deliveryTime,
      this.note);

  @override
  String toString() {
    return 'CreateInvoiceRequest{userCartId: $userCartId, addressId: $addressId, voucherId: $voucherId, promotionId: $promotionId, bankId: $bankId, shippingUnitId: $shippingUnitId, percentOff: $percentOff, paymentType: $paymentType, deliveryTime: $deliveryTime, note: $note}';
  }

  factory CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvoiceRequestToJson(this);
}