import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:state_notifier/state_notifier.dart';

final todoListProvider =
    StateNotifierProvider<TodoListStateNotifier, TodoListState>(
        (_) => TodoListStateNotifier());

class TodoListStateNotifier extends StateNotifier<TodoListState> {
  TodoListStateNotifier() : super(TodoListState());

  Todo? getTodo(String id) {
    return state.todoList.firstWhere((element) => element.id == id);
  }

  void addTodo(Todo newTodo) {
    state = state.copyWith(todoList: [...state.todoList, newTodo]);
  }

  void editTodo(String subjectUuid, Todo newTodo) {
    state = state.copyWith(todoList: [
      for (final todo in state.todoList)
        if (todo.id == subjectUuid) newTodo else todo,
    ]);
  }

  void deleteTodo(String subjectUuid) {
    state = state.copyWith(todoList: [
      for (final todo in state.todoList)
        if (todo.id != subjectUuid) todo,
    ]);
  }
}
