import 'package:dio/dio.dart';
import 'package:memory_lifes/app/constants/endpoint/app_endpoint.dart';
import 'package:memory_lifes/model/api/response/news_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Endpoint.BASE_URL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // @POST(Endpoint.LOGIN_APP)
  // Future<LoginRegisterResponse> loginApp(
  //     @Body() LoginAppRequest loginAppRequest);

  @GET(Endpoint.NEWS_APP)
  Future<NewsResponse> getNews();
}
