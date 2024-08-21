// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_tasks_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultTasks _$ResultTasksFromJson(Map<String, dynamic> json) => ResultTasks(
      id: json['id'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultTasksToJson(ResultTasks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => End.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'steps': instance.steps,
      'path': instance.path,
    };
