import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  int id;
  String name;
  @JsonKey(name: "product_code")
  String productCode;
  int price;
  @JsonKey(name: "sale_price")
  int salePrice;
  int qty;
  @JsonKey(name: "is_sale")
  int isSale;
  @JsonKey(name: "is_attr")
  int isAttr;
  @JsonKey(name: "percent_off")
  double percentOff;
  List<String> image;
  @JsonKey(name: "detail_product")
  String detailProduct;
  @JsonKey(name: "is_like")
  int isLike;
  @JsonKey(name: "average_number_of_stars")
  double averageNumberOfStars;
  @JsonKey(name: "category_id")
  int categoryId;

  Product(
    this.id,
    this.name,
    this.productCode,
    this.price,
    this.salePrice,
    this.qty,
    this.isSale,
    this.isAttr,
    this.percentOff,
    this.image,
    this.detailProduct,
    this.isLike,
    this.averageNumberOfStars,
    this.categoryId,
  );

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object> get props => [
        id,
        name,
        productCode,
        price,
        salePrice,
        qty,
        isSale,
        isAttr,
        percentOff,
        image,
        detailProduct,
        isLike,
        averageNumberOfStars,
        categoryId,
      ];

  @override
  String toString() {
    return 'Product{id: $id, name: $name, productCode: $productCode, price: $price, salePrice: $salePrice, qty: $qty, isSale: $isSale, isAttr: $isAttr, percentOff: $percentOff, image: $image, detailProduct: $detailProduct, isLike: $isLike, averageNumberOfStars: $averageNumberOfStars, categoryId: $categoryId,}';
  }
}
