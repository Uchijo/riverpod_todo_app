import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo_list_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class TodoListState with _$TodoListState {
  factory TodoListState({
    @Default([]) List<Todo> todoList,
  }) = _TodoListState;
}

@freezed
class Todo with _$Todo {
  factory Todo({
    @Default(TodoStatus.open) TodoStatus status,
    required String title,
    @Default('') String detail,
    required String id,
  }) = _Todo;

  factory Todo.withId({
    TodoStatus status = TodoStatus.open,
    required String title,
    String detail = '',
  }) {
    return Todo(title: title, id: uuid.v4());
  }

  static const uuid = Uuid();
}

enum TodoStatus {
  done,
  inProgress,
  open,
}
