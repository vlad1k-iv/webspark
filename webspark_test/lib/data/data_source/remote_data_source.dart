import 'package:injectable/injectable.dart';


abstract class RemoteDataSource {}

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl extends RemoteDataSource {
}
