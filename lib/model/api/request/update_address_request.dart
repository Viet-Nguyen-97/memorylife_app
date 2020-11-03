import 'package:json_annotation/json_annotation.dart';

part 'update_address_request.g.dart';

@JsonSerializable()
class UpdateAddressRequest {
  final int id;
  final String name;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  @JsonKey(name: "province_id")
  final int provinceId;

  @JsonKey(name: "district_id")
  final int districtId;

  @JsonKey(name: "ward_id")
  final int wardId;

  final String address;

  final int type;


  UpdateAddressRequest( this.id,this.name, this.phoneNumber, this.provinceId,
      this.districtId, this.wardId, this.address, this.type,);


  @override
  String toString() {
    return 'UpdateAddressRequest{id: $id, name: $name, phoneNumber: $phoneNumber, provinceId: $provinceId, districtId: $districtId, wardId: $wardId, address: $address, type: $type}';
  }

  factory UpdateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAddressRequestToJson(this);
}
