import 'package:dio/dio.dart';
import 'package:memory_lifes/model/api/response/barrel_response.dart';
import 'package:memory_lifes/model/api/rest_client.dart';
import 'package:meta/meta.dart';

class UserRepository {
  final Dio dio;

  UserRepository({@required this.dio});

  Future<NewsResponse> getNew() async {
    final client = RestClient(dio);
    return client.getNews();
  }
}
