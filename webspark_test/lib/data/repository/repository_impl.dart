import 'package:injectable/injectable.dart';
import 'package:webspark_test/data/data_source/remote_data_source.dart';
import 'package:webspark_test/domain/repository/repository.dart';

@Injectable(as: Repository)
class MainRepositoryImpl extends Repository {
  MainRepositoryImpl(this._mainRemoteDataSource);

  final RemoteDataSource _mainRemoteDataSource;
}
