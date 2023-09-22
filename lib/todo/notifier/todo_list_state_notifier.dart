import 'package:flutter_riverpod_todo/todo/model/todo_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../repository/todo_repository.dart';

class TodoListStateNotifier extends StateNotifier<List<Todo>> {
  final TodoRepository _todoRepository;

  TodoListStateNotifier(this._todoRepository, [List<Todo>? initialTodos])
      : super(initialTodos ?? []);

  void add(String description, String id) {
    state = [
      ...state,
      Todo(
        id: id,
        description: description,
      ),
    ];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: !todo.completed,
            description: todo.description,
          )
        else
          todo,
    ];
  }

  void edit({required String id, required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: todo.completed,
            description: description,
          )
        else
          todo,
    ];
  }

  void remove(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}
