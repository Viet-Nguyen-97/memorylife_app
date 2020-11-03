import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_lifes/model/entity/new.dart';
import 'package:memory_lifes/model/repo/user_repository.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/post_event.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/post_state.dart';
import 'package:memory_lifes/utils/dio/dio_error_util.dart';
import 'package:meta/meta.dart';

class PostBloc
    extends Bloc<PostEvent, PostState> {
  final UserRepository userRepository;

  PostBloc({@required this.userRepository}) : super();

  @override
  PostState get initialState => PostLoading();

  @override
  Stream<PostState> mapEventToState(
      PostEvent event) async* {
    if (event is LoadPost) {
      yield* _mapLoadPostToState();
    } else if (event is RefreshPost) {
      yield PostLoading();
      yield* _mapLoadPostToState();
    }
  }

  Stream<PostState> _mapLoadPostToState() async* {
    final currentState = state;
    try {
      if (state is PostLoading) {
        final post = await _fetchProduct();
        yield PostLoaded(post: post);
      }
    } catch (e) {
      print(e);
      yield PostNotLoaded('$e');
    }
  }

  Future<List<News>> _fetchProduct() async {
    try {
      final response = await userRepository.getNew();
      return response.data;
    } catch (e) {
      throw Exception('$e');
    }
  }
}
