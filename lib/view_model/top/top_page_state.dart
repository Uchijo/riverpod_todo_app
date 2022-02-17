import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';

part 'top_page_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class TopPageState with _$TopPageState {
  factory TopPageState({
    required List<Todo> exposuredTodoList,
    @Default(FilterType.all) FilterType filterType,
  }) = _TopPageState;
}

enum FilterType {
  all,
  done,
  open,
  inProgress,
}
