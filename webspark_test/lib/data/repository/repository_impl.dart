import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:webspark_test/data/data_source/remote_data_source.dart';
import 'package:webspark_test/data/network/error_handler.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/data/responses/result_tasks_response.dart';
import 'package:webspark_test/domain/repository/repository.dart';

@Injectable(as: Repository)
class MainRepositoryImpl extends Repository {
  MainRepositoryImpl(this._remoteDataSource);

  final RemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, ListTasks>> getListTasks() async {
    try {
      final response = await _remoteDataSource.getListTasks();

      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, ResultTasksResponse>> resultTasks(List<ResultTasks> tasks) async {
    try {
      final response = await _remoteDataSource.resultTasks(tasks);

      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
