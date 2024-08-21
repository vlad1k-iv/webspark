import 'package:dartz/dartz.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/data/responses/result_tasks_response.dart';

abstract class Repository {
  Future<Either<Failure, ListTasks>> getListTasks();

  Future<Either<Failure, ResultTasksResponse>> resultTasks(
    List<ResultTasks> input,
  );
}
