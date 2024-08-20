import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:webspark_test/core/constants.dart';
import 'package:webspark_test/core/di/di.dart';
import 'package:webspark_test/data/network/client.dart';

part 'api_container.g.dart';

@RestApi(baseUrl: Constants.apiBaseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) =
      _AppServiceClient;
}

AppServiceClient initLoginClient() {
  final dio = locator.get<DioFactory>().getDio(Constants.apiBaseUrl);

  return AppServiceClient(
    dio,
  );
}
