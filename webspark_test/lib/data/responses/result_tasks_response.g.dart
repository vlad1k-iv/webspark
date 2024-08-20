// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultTasksResponse _$ResultTasksResponseFromJson(Map<String, dynamic> json) =>
    ResultTasksResponse(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultTasksResponseToJson(
        ResultTasksResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

ResultData _$ResultDataFromJson(Map<String, dynamic> json) => ResultData(
      id: json['id'] as String?,
      correct: json['correct'] as bool?,
    );

Map<String, dynamic> _$ResultDataToJson(ResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'correct': instance.correct,
    };
