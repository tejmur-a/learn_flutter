import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/tasks/list/tasks_state_holder.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksState = ref.watch(tasksStateNotifierProvider);
    final tasksStateNotifier = ref.watch(tasksStateNotifierProvider.notifier);
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () => tasksStateNotifier.refresh(),
          child: tasksState.when(
            loaded: (tasks) {
              return Column(
                children: tasks.map((e) => Text(e.name)).toList(),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: () => const Text('Error!'),
          ),
        ),
      ),
    );
  }
}
