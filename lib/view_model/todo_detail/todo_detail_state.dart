import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';

part 'todo_detail_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class TodoDetailState with _$TodoDetailState {
  factory TodoDetailState({
    Todo? focusedTodo,
  }) = _TodoDetailState;
}
