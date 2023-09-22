import 'package:flutter_riverpod_todo/todo/model/todo_model.dart';

abstract class TodoRepository {
  Future<void> add(Todo todo);
  Future<void> update(Todo todo);
  Future<void> delete(Todo todo);
}
