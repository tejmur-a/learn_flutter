import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/tasks/list/tasks_state.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository.dart';

final tasksStateNotifierProvider =
    StateNotifierProvider<TasksStateNotifier, TasksState>(
  (ref) => TasksStateNotifier(
    ref.watch(
      tasksRepositoryProvider,
    ),
  ),
  dependencies: [
    tasksRepositoryProvider,
  ],
);

class TasksStateNotifier extends StateNotifier<TasksState> {
  final TasksRepository _tasksRepository;

  TasksState get currentState => state;

  TasksStateNotifier(this._tasksRepository)
      : super(const TasksState.loading()) {
    _init();
  }

  Future<void> _init() async {
    try {
      final tasks = await _tasksRepository.getTasks();
      state = TasksState.loaded(tasks: tasks);
    } on DioError catch (_) {
      state = const TasksState.error();
    }
  }

  Future<void> refresh() async {
    state = const TasksState.loading();
    await Future.delayed(const Duration(seconds: 2));
    try {
      final tasks = await _tasksRepository.getTasks();
      state = TasksState.loaded(tasks: tasks);
    } on DioError catch (_) {
      state = const TasksState.error();
    }
  }
}
