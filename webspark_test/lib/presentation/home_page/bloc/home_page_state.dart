import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/domain/model/models.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(false) bool isLoading,
    @Default(0) int percentIndicator,
    @Default(false) bool isReady,
    Failure? error,
    @Default('') String url,
    List<ResultTasks>? listResultTasks,
    List<GridResultItems>? gridResultItems,
  }) = _HomePageState;
}

extension HomePageStateExtension on HomePageState {
  bool get isUrlLengthValid => url.length > 8;
}
