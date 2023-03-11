import 'dart:io';

import 'package:dio/dio.dart';
import 'package:learn_flutter/features/tasks/model/task.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository.dart';

class TasksRepositoryImpl extends TasksRepository {
  final Dio _dio;

  TasksRepositoryImpl(this._dio);

  @override
  Future<List<Task>> getTasks() async {
    final res = await _dio.get('tasks/list');
    if (res.statusCode == HttpStatus.ok) {
      return (res.data as List<dynamic>)
          .map((rawData) => Task.fromJson(rawData))
          .toList();
    }
    throw DioError(
      requestOptions: res.requestOptions,
    );
  }
}
