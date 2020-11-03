import 'package:json_annotation/json_annotation.dart';

part 'delete_address_request.g.dart';

@JsonSerializable()
class DeleteAddressRequest {
  final int id ;


  DeleteAddressRequest(this.id);

  factory DeleteAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAddressRequestToJson(this);

  @override
  String toString() {
    return 'DeleteAddressRequest{id: $id}';
  }
}
