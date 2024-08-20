import 'package:webspark_test/data/responses/list_tasks_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'result_tasks_request.g.dart';

@JsonSerializable()
class ResultTasks {
  String id;
  Result result;

  ResultTasks({
    required this.id,
    required this.result,
  });

  factory ResultTasks.fromJson(Map<String, dynamic> json) =>
      _$ResultTasksFromJson(json);

  Map<String, dynamic> toJson() => _$ResultTasksToJson(this);
}

@JsonSerializable()
class Result {
  List<End> steps;
  String path;

  Result({
    required this.steps,
    required this.path,
  });

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
