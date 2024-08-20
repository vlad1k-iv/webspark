import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/domain/repository/repository.dart';
import 'package:webspark_test/domain/use_case/base_usecase.dart';

@Injectable()
class ListTasksUseCase implements BaseUseCase<bool, ListTasks> {
  ListTasksUseCase(this._repository);
  final Repository _repository;

  @override
  Future<Either<Failure, ListTasks>> execute([
    bool value = false,
  ]) async {
    return _repository.getListTasks();
  }
}
