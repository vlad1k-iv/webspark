import 'package:injectable/injectable.dart';
import 'package:webspark_test/data/network/api/api_container.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/data/responses/result_tasks_response.dart';

abstract class RemoteDataSource {
  Future<ListTasks> getListTasks();

  Future<ResultTasksResponse> resultTasks(List<ResultTasks> tasks);
}

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl extends RemoteDataSource {
  final _client = initClient();

  @override
  Future<ListTasks> getListTasks() {
    return _client.getTasks();
  }

  @override
  Future<ResultTasksResponse> resultTasks(
    List<ResultTasks> tasks,
  ) {
    return _client.sendResultTasks(tasks);
  }
}
