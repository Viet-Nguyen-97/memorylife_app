// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressRequest _$AddAddressRequestFromJson(Map<String, dynamic> json) {
  return AddAddressRequest(
    json['name'] as String,
    json['phone_number'] as String,
    json['province_id'] as int,
    json['district_id'] as int,
    json['ward_id'] as int,
    json['address'] as String,
    json['type'] as int,
  );
}

Map<String, dynamic> _$AddAddressRequestToJson(AddAddressRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'province_id': instance.provinceId,
      'district_id': instance.districtId,
      'ward_id': instance.wardId,
      'address': instance.address,
      'type': instance.type,
    };
