// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:webspark_test/data/data_source/remote_data_source.dart' as _i4;
import 'package:webspark_test/data/network/client.dart' as _i3;
import 'package:webspark_test/data/repository/repository_impl.dart' as _i6;
import 'package:webspark_test/domain/repository/repository.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DioFactory>(() => _i3.DioFactory());
    gh.factory<_i4.RemoteDataSource>(() => _i4.RemoteDataSourceImpl());
    gh.factory<_i5.Repository>(
        () => _i6.MainRepositoryImpl(gh<_i4.RemoteDataSource>()));
    return this;
  }
}
