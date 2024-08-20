import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:webspark_test/core/constants.dart';
import 'package:webspark_test/core/di/di.dart';
import 'package:webspark_test/data/network/client.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/data/responses/result_tasks_response.dart';

part 'api_container.g.dart';

@RestApi(baseUrl: Constants.apiBaseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET('/flutter/api')
  Future<ListTasks> getTasks();

  @POST('/flutter/api')
  Future<ResultTasksResponse> sendResultTasks(
    @Body() List<ResultTasks> data,
  );
}

AppServiceClient initClient() {
  final dio = locator.get<DioFactory>().getDio(Constants.apiBaseUrl);

  return AppServiceClient(
    dio,
  );
}
