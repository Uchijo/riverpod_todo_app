import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state_notifier.dart';
import 'package:riverpod_todo_app/view_model/todo_detail/todo_detail_state.dart';
import 'package:state_notifier/state_notifier.dart';

final todoDetailStateProvider =
    StateNotifierProvider<TodoDetailStateNotifier, TodoDetailState>(
        (ref) => TodoDetailStateNotifier(ref));

class TodoDetailStateNotifier extends StateNotifier<TodoDetailState> {
  TodoDetailStateNotifier(this.ref) : super(TodoDetailState()) {
    ref.listen(todoListProvider, (TodoListState? previous, TodoListState next) {
      if (previous?.todoList != next.todoList && state.focusedTodo != null) {
        final newSubject =
            ref.read(todoListProvider.notifier).getTodo(state.focusedTodo!.id);
        if (newSubject != null) {
          state = state.copyWith(focusedTodo: newSubject);
        }
      }
    });
  }

  final StateNotifierProviderRef<TodoDetailStateNotifier, TodoDetailState> ref;

  void applyChanges(Todo todo) {
    ref.read(todoListProvider.notifier).editTodo(todo.id, todo);
  }

  void setTodo(Todo todo) {
    debugPrint('=========== setTodo was called!');
    debugPrint('todo: $todo');
    state = state.copyWith(focusedTodo: todo);
  }

  void editTodo({String? title, String? detail, TodoStatus? status}) {
    if (state.focusedTodo != null) {
      state = state.copyWith.focusedTodo!(
        title: title ?? state.focusedTodo!.title,
        detail: detail ?? state.focusedTodo!.detail,
        status: status ?? state.focusedTodo!.status,
      );
    }
  }

  void deleteTodo() {
    if (state.focusedTodo != null) {
      ref.read(todoListProvider.notifier).deleteTodo(state.focusedTodo!.id);
    }
  }
}
