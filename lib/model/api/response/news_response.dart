import 'package:json_annotation/json_annotation.dart';
import 'package:memory_lifes/model/api/response/base_response.dart';
import 'package:memory_lifes/model/entity/new.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponse extends BaseResponse {
  List<News> data;

  NewsResponse(this.data);

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
