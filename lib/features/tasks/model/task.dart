import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {
  final String id;
  final String number;
  final String date;
  final String name;
  final String beginDate;
  final String deadline;
  final String desk;
  final bool done;

  Task({
    required this.id,
    required this.number,
    required this.date,
    required this.name,
    required this.beginDate,
    required this.deadline,
    required this.desk,
    required this.done,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
