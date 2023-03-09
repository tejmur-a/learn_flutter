import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/tasks/model/task.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository_impl.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksRepository = ref.watch(tasksRepositoryProvider);
    return FutureBuilder<List<Task>>(
      future: tasksRepository.getTasks(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final tasks = snapshot.data!;
          return ListView(
            children: tasks.map((task) => Text(task.name)).toList(),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
