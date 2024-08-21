import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:webspark_test/core/functions.dart';
import 'package:webspark_test/data/data_source/local_data_source.dart';
import 'package:webspark_test/data/network/failure.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/domain/model/models.dart';
import 'package:webspark_test/domain/use_case/list_tasks_usecase.dart';
import 'package:webspark_test/domain/use_case/send_result_tasks_usecase.dart';
import 'package:webspark_test/presentation/home_page/bloc/home_page_state.dart';

@Injectable()
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(
    this._listTasksUseCase,
    this._sendResultTasksUseCase,
    this._localDataSource,
  ) : super(
          const HomePageState(),
        );

  final ListTasksUseCase _listTasksUseCase;
  final SendResultTasksUseCase _sendResultTasksUseCase;
  final LocalDataSource _localDataSource;

  void emitUrl(String url) {
    emit(
      state.copyWith(
        url: url,
      ),
    );
  }

  Future<void> getTasks(VoidCallback onError) async {
    emit(
      state.copyWith(isLoading: true),
    );
    final isUrlGet = await checkUrlSupportsGetParameters(state.url);

    emitPercent(10);
    if (isUrlGet) {
      _localDataSource.saveLink(state.url);

      final response = await _listTasksUseCase.execute();

      emitPercent(40);

      response.fold(
        (l) {
          emit(
            state.copyWith(
              isLoading: false,
              error: l,
              percentIndicator: 0,
            ),
          );
          onError();
        },
        (r) {
          final listResultTasks = <ResultTasks>[];
          final listGridItems = <GridResultItems>[];

          if (r.data.isNotEmpty) {
            final stepPercent = (60 / r.data.length).ceil();

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

              final listClosedItem = <End>[];

              for (int y = 0; y < r.data[i].field.length; y++) {
                for (int x = 0; x < r.data[i].field[y].length; x++) {
                  if (r.data[i].field[y][x] == 'X') {
                    listClosedItem.add(End(x: x, y: y));
                  }
                }
              }

              List<End> path = calculateShortestPath(
                grid: grid,
                start: start,
                end: end,
              );
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
              final int rawGridSizeX = r.data[i].field.length;
              final int rawGridSizeY = r.data[i].field[0].length;

              final int gridSizeX = (rawGridSizeX < 1)
                  ? 2
                  : (rawGridSizeX > 99)
                      ? 99
                      : rawGridSizeX;
              final int gridSizeY = (rawGridSizeY < 1)
                  ? 2
                  : (rawGridSizeY > 99)
                      ? 99
                      : rawGridSizeY;

              listGridItems.add(
                GridResultItems(
                  blockedItems: listClosedItem,
                  path: formatPath(result),
                  points: path,
                  gridSize: End(
                    x: gridSizeX,
                    y: gridSizeY,
                  ),
                ),
              );

              emitPercent(state.percentIndicator + stepPercent);
            }
          }

          emit(
            state.copyWith(
              isReady: true,
              isLoading: false,
              listResultTasks: listResultTasks,
              gridResultItems: listGridItems,
            ),
          );
        },
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          isReady: false,
          percentIndicator: 0,
          error: Failure(500, 'Url is not valid!'),
        ),
      );
      onError();
    }
  }

  Future<void> sendResult({
    required VoidCallback onSuccess,
    required VoidCallback onError,
  }) async {
    if (state.listResultTasks?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );

      emitPercent(10);

      final response = await _sendResultTasksUseCase.execute(
        state.listResultTasks!,
      );

      emitPercent(90);

      response.fold(
          (l) => () {
                emit(
                  state.copyWith(
                    isLoading: false,
                  ),
                );
                onError();
              }, (r) {
        emit(
          state.copyWith(
            isLoading: false,
          ),
        );

        onSuccess();
      });
      emitPercent(100);
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
