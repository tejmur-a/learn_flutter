import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/features/network/dio.dart';
import 'package:learn_flutter/features/tasks/list/tasks_view.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository.dart';
import 'package:learn_flutter/features/tasks/repo/tasks_repository_impl.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProviderScope(
        overrides: [
          tasksRepositoryProvider.overrideWithValue(
            TasksRepositoryImpl(
              ref.watch(dioProvider),
            ),
          ),
        ],
        child: const TasksView(),
      ),
    );
  }
}
