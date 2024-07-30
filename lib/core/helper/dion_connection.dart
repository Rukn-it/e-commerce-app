import 'package:dio/dio.dart';

import 'api/end_points.dart';

class DioConnection {
  static Dio? _connection;

  DioConnection._Dio();

  static Dio get instance {
    _connection ??= Dio(BaseOptions(
      baseUrl: EndPoint.baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    return _connection!;
  }

  static void setToken(String token) {
    _connection?.options.headers['Authorization'] = 'Bearer $token';
  }
}
