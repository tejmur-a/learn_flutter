import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_flutter/features/tasks/model/task.dart';

part 'tasks_state.freezed.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.loaded({
    required List<Task> tasks,
  }) = _TasksStateLoaded;

  const factory TasksState.loading() = _TasksStateLoading;

  const factory TasksState.error() = _TasksStateError;
}
