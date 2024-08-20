import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:webspark_test/core/functions.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/domain/use_case/list_tasks_usecase.dart';
import 'package:webspark_test/domain/use_case/send_result_tasks_usecase.dart';
import 'package:webspark_test/presentation/home_page/bloc/home_page_state.dart';

@Injectable()
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(
    this._listTasksUseCase,
    this._sendResultTasksUseCase,
  ) : super(
          const HomePageState(),
        );

  final ListTasksUseCase _listTasksUseCase;
  final SendResultTasksUseCase _sendResultTasksUseCase;

  void emitUrl(String url) {
    emit(
      state.copyWith(
        url: url,
      ),
    );
  }

  Future<void> getTasks() async {
    final isUrlGet = await checkUrlSupportsGetParameters(state.url);

    emitPercent(10);

    if (isUrlGet) {
      final response = await _listTasksUseCase.execute();

      emitPercent(40);

      await Future.delayed(
        const Duration(seconds: 2),
      );

      response.fold(
        (l) => emit(
          state.copyWith(
            isLoading: false,
            error: l,
          ),
        ),
        (r) {
          final listResultTasks = <ResultTasks>[];

          if (r.data.isNotEmpty) {
            for (var i = 0; r.data.length > i; i++) {
              List<List<int>> grid = convertGrid(r.data[i].field);

              End start = End(
                x: r.data[i].start.x,
                y: r.data[i].start.y,
              );
              End end = End(
                x: r.data[i].end.x,
                y: r.data[i].end.y,
              );

              List<End> path = shortestPath(grid, start, end);
              List<Map<String, int>> result =
                  path.map((point) => {'x': point.x, 'y': point.y}).toList();

              listResultTasks.add(
                ResultTasks(
                  id: r.data[i].id,
                  result: Result(
                    steps: path,
                    path: formatPath(result),
                  ),
                ),
              );
              emitPercent(state.percentIndicator + 30);
            }
          }

          emit(
            state.copyWith(
              isReady: true,
              listResultTasks: listResultTasks,
            ),
          );
        },
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          error: Failure(500, 'Url is not valid!'),
        ),
      );
    }
  }

  Future<void> sendResult() async {
    if (state.listResultTasks?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );

      final response =
          await _sendResultTasksUseCase.execute(state.listResultTasks!);

      response.fold((l) => null, (r) {});
    }
  }

  void emitPercent(int percent) {
    emit(
      state.copyWith(
        percentIndicator: percent,
      ),
    );
  }

  void onPop() {
    emit(
      state.copyWith(
        isReady: false,
        isLoading: false,
        percentIndicator: 0,
      ),
    );
  }
}
