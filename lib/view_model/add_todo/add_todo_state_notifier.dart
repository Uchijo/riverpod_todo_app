import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

final addTodoStateProvider =
    StateNotifierProvider.autoDispose<AddTodoStateNotifier, dynamic>(
        (ref) => AddTodoStateNotifier(ref));

class AddTodoStateNotifier extends StateNotifier {
  AddTodoStateNotifier(this.ref) : super(null);
  final AutoDisposeStateNotifierProviderRef ref;

  void addTodo({required String title, String? detail}) {
    final newTodo = Todo.withId(title: title, detail: detail ?? '');
    ref.read(todoListProvider.notifier).addTodo(newTodo);
  }
}
