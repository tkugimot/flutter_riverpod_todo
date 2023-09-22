import 'package:flutter_riverpod_todo/todo/model/todo_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Todo', () {
    test('Todo instance should be created', () {
      final description = 'sampledescription';
      final id = 'sampleid';
      final todo = Todo(description: description, id: id);
      expect(todo.completed, false);
    });

    test('toString', () {
      final description = 'sampledescription';
      final id = 'sampleid';
      final todo = Todo(description: description, id: id);
      expect(todo.completed, false);

      final actual = todo.toString();
      final expected = 'Todo(description: sampledescription, completed: false)';
      expect(actual, expected);
    });
  });
}
