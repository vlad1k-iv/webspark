import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/result_tasks_response.dart';
import 'package:webspark_test/domain/repository/repository.dart';
import 'package:webspark_test/domain/use_case/base_usecase.dart';

@Injectable()
class SendResultTasksUseCase
    implements BaseUseCase<List<ResultTasks>, ResultTasksResponse> {
  SendResultTasksUseCase(this._repository);
  final Repository _repository;

  @override
  Future<Either<Failure, ResultTasksResponse>> execute(
    List<ResultTasks> tasks,
  ) async {
    return _repository.resultTasks(
      tasks,
    );
  }
}
