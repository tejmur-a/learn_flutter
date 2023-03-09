import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/network/dio.dart';
import 'package:learn_flutter/features/tasks/model/task.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository.dart';

final tasksRepositoryProvider = Provider<TasksRepository>(
  (ref) => TasksRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class TasksRepositoryImpl extends TasksRepository {
  final Dio _dio;

  TasksRepositoryImpl(this._dio);

  @override
  Future<List<Task>> getTasks() async {
    return [];
  }
}
