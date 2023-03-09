// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as String,
      number: json['number'] as String,
      date: json['date'] as String,
      name: json['name'] as String,
      beginDate: json['beginDate'] as String,
      deadline: json['deadline'] as String,
      desk: json['desk'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'date': instance.date,
      'name': instance.name,
      'beginDate': instance.beginDate,
      'deadline': instance.deadline,
      'desk': instance.desk,
      'done': instance.done,
    };
