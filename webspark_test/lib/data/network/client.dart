import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DioFactory {
  DioFactory();

  Dio getDio(String baseUrl) {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: baseUrl,
    );

    return dio;
  }
}
