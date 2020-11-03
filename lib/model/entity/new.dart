import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new.g.dart';

@JsonSerializable()
class News extends Equatable {
  int id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "content")
  String content;
  @JsonKey(name: "image")
  String image;
  @JsonKey(name: "datecreate")
  String date;
  @JsonKey(name: "timecreate")
  String time;
  @JsonKey(name: "localX")
  String localX;
  @JsonKey(name: "localY")
  String localY;
  @JsonKey(name: "activeId")
  int activeId;
  @JsonKey(name: "feelId")
  int feelId;
  @JsonKey(name: "userId")
  int userId;

  News(this.id, this.title, this.content, this.image, this.date, this.time,this.localX,
      this.localY, this.activeId, this.feelId, this.userId);

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

  @override
  List<Object> get props =>
      [id, title, content, image, date, time, localX, localY, activeId, feelId, userId];

  @override
  String toString() {
    return 'New{id: $id, title:$title,content:$content,image:$image,date:$date,time: $time, localX:$localX,localY:$localY,feelId:$feelId,user:$userId }';
  }
}
