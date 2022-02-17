import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state_notifier.dart';
import 'package:riverpod_todo_app/view_model/top/top_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

final topPageStateProvider =
    StateNotifierProvider.autoDispose<TopPageStateNotifier, TopPageState>(
        (ref) => TopPageStateNotifier(ref));

class TopPageStateNotifier extends StateNotifier<TopPageState> {
  TopPageStateNotifier(this.ref)
      : super(TopPageState(
            exposuredTodoList:
                ref.read(todoListProvider.notifier).state.todoList)) {
    // model層のTodoListStateが変化したらViewModel層であるTopPageStateも変化させる。
    ref.listen(todoListProvider, (TodoListState? previous, TodoListState next) {
      state = state.copyWith(exposuredTodoList: next.todoList);
      setFilter(state.filterType);
    });
  }

  final AutoDisposeStateNotifierProviderRef<TopPageStateNotifier, TopPageState>
      ref;

  void setFilter(FilterType filterType) {
    final originalTodoList = ref.read(todoListProvider.notifier).state.todoList;
    final newExposuredList = originalTodoList.where((element) {
      switch (filterType) {
        case FilterType.all:
          return true;
        case FilterType.open:
          return element.status == TodoStatus.open;
        case FilterType.inProgress:
          return element.status == TodoStatus.inProgress;
        case FilterType.done:
          return element.status == TodoStatus.done;
      }
    }).toList();

    state = state.copyWith(filterType: filterType);
    state = state.copyWith(exposuredTodoList: newExposuredList);
  }

  void editTodo(String subjectUuid, Todo newTodo) {
    ref.read(todoListProvider.notifier).editTodo(subjectUuid, newTodo);
  }

  void deleteTodo(String subjectUuid) {
    ref.read(todoListProvider.notifier).deleteTodo(subjectUuid);
  }
}
