class Endpoint {
  Endpoint._();

  static const BASE_URL = 'https://8f04e45fd34b.ngrok.io';
  //AUTH ROUTE
  static const LOGIN_APP = '/api/loginApp';
  static const NEWS_APP = '/api/post';

  static const int DEFAULT_LIMIT = 20;

  // request failed
  static const int FAILURE = 0;

  // request success
  static const int SUCCESS = 1;

  // request with token expire
  static const int TOKEN_EXPIRE = 2;

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  // method
  static const GET = 'GET';
  static const POST = 'POST';
  static const PUT = 'PUT';
  static const DELETE = 'DELETE';

  // get path
  static String getPath(String path) {
    return '$BASE_URL$path';
  }
}
