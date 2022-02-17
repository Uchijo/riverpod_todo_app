import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/component/todo_card.dart';
import 'package:riverpod_todo_app/view_model/top/top_page_state_notifier.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod todo app'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: ref.watch(topPageStateProvider).exposuredTodoList.length,
          itemBuilder: (context, index) {
            final todo =
                ref.watch(topPageStateProvider).exposuredTodoList[index];
            return GestureDetector(
              onLongPress: () =>
                  ref.read(topPageStateProvider.notifier).deleteTodo(todo.id),
              child: TodoCard(todo: todo),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
