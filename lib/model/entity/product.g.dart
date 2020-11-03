// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    json['id'] as int,
    json['name'] as String,
    json['product_code'] as String,
    json['price'] as int,
    json['sale_price'] as int,
    json['qty'] as int,
    json['is_sale'] as int,
    json['is_attr'] as int,
    (json['percent_off'] as num)?.toDouble(),
    (json['image'] as List)?.map((e) => e as String)?.toList(),
    json['detail_product'] as String,
    json['is_like'] as int,
    (json['average_number_of_stars'] as num)?.toDouble(),
    json['category_id'] as int,
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_code': instance.productCode,
      'price': instance.price,
      'sale_price': instance.salePrice,
      'qty': instance.qty,
      'is_sale': instance.isSale,
      'is_attr': instance.isAttr,
      'percent_off': instance.percentOff,
      'image': instance.image,
      'detail_product': instance.detailProduct,
      'is_like': instance.isLike,
      'average_number_of_stars': instance.averageNumberOfStars,
      'category_id': instance.categoryId,
    };
