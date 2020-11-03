import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:memory_lifes/model/entity/product.dart';

part 'product_all_data.g.dart';

@JsonSerializable()
class ProductAllData extends Equatable {
  @JsonKey(name: "list")
  List<Product> listProduct;

  ProductAllData({this.listProduct});

  factory ProductAllData.fromJson(Map<String, dynamic> json) =>
      _$ProductAllDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAllDataToJson(this);

  @override
  List<Object> get props => [listProduct];
}
