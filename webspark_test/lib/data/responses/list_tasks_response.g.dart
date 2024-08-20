// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTasks _$ListTasksFromJson(Map<String, dynamic> json) => ListTasks(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTasksToJson(ListTasks instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String,
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      start: End.fromJson(json['start'] as Map<String, dynamic>),
      end: End.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };

End _$EndFromJson(Map<String, dynamic> json) => End(
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$EndToJson(End instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
