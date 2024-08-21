// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:webspark_test/data/data_source/local_data_source.dart' as _i4;
import 'package:webspark_test/data/data_source/remote_data_source.dart' as _i5;
import 'package:webspark_test/data/network/client.dart' as _i3;
import 'package:webspark_test/data/repository/repository_impl.dart' as _i7;
import 'package:webspark_test/domain/repository/repository.dart' as _i6;
import 'package:webspark_test/domain/use_case/list_tasks_usecase.dart' as _i9;
import 'package:webspark_test/domain/use_case/send_result_tasks_usecase.dart'
    as _i8;
import 'package:webspark_test/presentation/home_page/bloc/home_page_cubit.dart'
    as _i10;

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
    gh.lazySingleton<_i4.LocalDataSource>(
        () => _i4.LocalDataSourceImplementer());
    gh.factory<_i5.RemoteDataSource>(() => _i5.RemoteDataSourceImpl());
    gh.factory<_i6.Repository>(
        () => _i7.MainRepositoryImpl(gh<_i5.RemoteDataSource>()));
    gh.factory<_i8.SendResultTasksUseCase>(
        () => _i8.SendResultTasksUseCase(gh<_i6.Repository>()));
    gh.factory<_i9.ListTasksUseCase>(
        () => _i9.ListTasksUseCase(gh<_i6.Repository>()));
    gh.factory<_i10.HomePageCubit>(() => _i10.HomePageCubit(
          gh<_i9.ListTasksUseCase>(),
          gh<_i8.SendResultTasksUseCase>(),
          gh<_i4.LocalDataSource>(),
        ));
    return this;
  }
}
