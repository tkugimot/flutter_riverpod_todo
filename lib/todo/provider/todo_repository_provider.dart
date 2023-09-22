import 'package:flutter_riverpod_todo/todo/repository/todo_repository.dart';
import 'package:flutter_riverpod_todo/todo/repository/todo_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final todoRepositoryProvider = Provider<TodoRepository>((ref) {
  return TodoRepositoryImpl();
});
