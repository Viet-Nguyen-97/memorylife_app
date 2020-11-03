import 'package:equatable/equatable.dart';
import 'package:memory_lifes/model/entity/new.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<News> post;

  const PostLoaded({this.post});
  @override
  List<Object> get props => [post];
}

class PostNotLoaded extends PostState {
  final String error;

  PostNotLoaded(this.error);

  @override
  String toString() {
    return 'PostNotLoaded{error: $error}';
  }
}
