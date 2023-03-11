import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/tasks/model/task.dart';

final tasksRepositoryProvider = Provider<TasksRepository>(
  (ref) => throw UnimplementedError(),
);

abstract class TasksRepository {
  Future<List<Task>> getTasks();
}
