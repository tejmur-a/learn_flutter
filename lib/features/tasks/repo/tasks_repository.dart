import 'package:learn_flutter/features/tasks/model/task.dart';

abstract class TasksRepository {
  Future<List<Task>> getTasks();
}
