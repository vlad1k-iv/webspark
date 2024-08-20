import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(false) bool isLoading,
    @Default(0) int percentIndicator,
    @Default(false) bool isReady,
    Failure? error,
    @Default('https://flutter.webspark.dev/flutter/api') String url,
    List<ResultTasks>? listResultTasks,
  }) = _HomePageState;
}
