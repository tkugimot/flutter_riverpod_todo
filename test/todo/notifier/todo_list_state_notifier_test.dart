import 'package:flutter_riverpod_todo/todo/notifier/todo_list_state_notifier.dart';
import 'package:flutter_riverpod_todo/todo/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTodoRepository extends Mock implements TodoRepository {}

void main() {
  late TodoListStateNotifier target;
  late MockTodoRepository mockTodoRepository;

  setUp(() {
    mockTodoRepository = MockTodoRepository();
    target = TodoListStateNotifier(mockTodoRepository);
  });

  group('add', () {
    test('Should check add works expectedly', () {
      final String description = 'newTodo';
      final String id = 'sampleid';
      expect(() => target.add(description, id), returnsNormally);
    });
  });

  group('toggle', () {
    test('Should check toggle works expectedly', () {
      final String description = 'newTodo';
      final String id = 'sampleid';
      expect(() => target.add(description, id), returnsNormally);
      expect(() => target.toggle(id), returnsNormally);
    });
  });

  group('edit', () {
    test('Should check edit works expectedly', () {
      final String description = 'newTodo';
      final String id = 'sampleid';
      expect(() => target.add(description, id), returnsNormally);
      expect(() => target.edit(id: id, description: 'edit'), returnsNormally);
    });
  });

  group('remove', () {
    test('Should check remove works expectedly', () {
      final String description = 'newTodo';
      final String id = 'sampleid';
      expect(() => target.add(description, id), returnsNormally);
      expect(() => target.remove(id), returnsNormally);
    });
  });
}
