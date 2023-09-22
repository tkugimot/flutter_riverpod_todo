import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo/todo/screen/todo_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// Extend HookConsumerWidget instead of HookWidget, which is exposed by Riverpod
class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(home: TodoListPage());
  }
}
