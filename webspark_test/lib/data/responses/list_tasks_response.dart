import 'package:json_annotation/json_annotation.dart';

part 'list_tasks_response.g.dart';

@JsonSerializable()
class ListTasks {
  bool error;
  String message;
  List<Datum> data;

  ListTasks({
    required this.error,
    required this.message,
    required this.data,
  });

  factory ListTasks.fromJson(Map<String, dynamic> json) =>
      _$ListTasksFromJson(json);

  Map<String, dynamic> toJson() => _$ListTasksToJson(this);
}

@JsonSerializable()
class Datum {
  String id;
  List<String> field;
  End start;
  End end;

  Datum({
    required this.id,
    required this.field,
    required this.start,
    required this.end,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class End {
  int x;
  int y;

  End({
    required this.x,
    required this.y,
  });

  factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);

  Map<String, dynamic> toJson() => _$EndToJson(this);
}
