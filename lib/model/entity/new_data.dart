import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:memory_lifes/model/entity/new.dart';

part 'new_data.g.dart';

@JsonSerializable()
class newData extends Equatable {
  @JsonKey(name: "list")
  List<News> news;

  newData({this.news});

  factory newData.fromJson(Map<String, dynamic> json) =>
      _$newDataFromJson(json);

  Map<String, dynamic> toJson() => _$newDataToJson(this);

  @override
  List<Object> get props => [news];
}
