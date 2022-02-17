import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:state_notifier/state_notifier.dart';

final todoListProvider = StateNotifierProvider((_) => TodoListStateNotifier());

class TodoListStateNotifier extends StateNotifier<TodoListState> {
  TodoListStateNotifier() : super(TodoListState());

  void addTodo(Todo newTodo) {
    state = state.copyWith(todoList: [...state.todoList, newTodo]);
  }
}
