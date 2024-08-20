import 'package:json_annotation/json_annotation.dart';

part 'result_tasks_response.g.dart';

@JsonSerializable()
class ResultTasksResponse {
  bool? error;
  String? message;
  List<ResultData>? data;

  ResultTasksResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  factory ResultTasksResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultTasksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResultTasksResponseToJson(this);
}

@JsonSerializable()
class ResultData {
  String? id;
  bool? correct;

  ResultData({
    required this.id,
    required this.correct,
  });

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDataToJson(this);
}
