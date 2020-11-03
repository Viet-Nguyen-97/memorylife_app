import 'package:equatable/equatable.dart';

class PostEvent extends Equatable {
  const PostEvent();

  List<Object> get props => [];
}

class LoadPost extends PostEvent {}

class RefreshPost extends PostEvent {}
