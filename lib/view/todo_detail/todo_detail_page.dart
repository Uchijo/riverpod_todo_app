import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:riverpod_todo_app/view_model/todo_detail/todo_detail_state_notifier.dart';

class TodoDetailPage extends HookConsumerWidget {
  const TodoDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('build method is called.');
    debugPrint(
        'focused todo: ${ref.read(todoDetailStateProvider).focusedTodo}');

    final titleTextController = useTextEditingController()
      ..text = ref.read(todoDetailStateProvider).focusedTodo?.title ?? '';

    final detailTextController = useTextEditingController()
      ..text = ref.read(todoDetailStateProvider).focusedTodo?.detail ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'todo: ${ref.watch(todoDetailStateProvider).focusedTodo?.title ?? ''}'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text('title: '),
              Expanded(
                child: TextField(
                  controller: titleTextController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(todoDetailStateProvider.notifier).applyChanges(
                        ref.read(todoDetailStateProvider).focusedTodo!.copyWith(
                              title: titleTextController.text,
                            ),
                      );
                },
                child: const Text('apply'),
              ),
            ],
          ),
          Row(
            children: [
              const Text('detail: '),
              Expanded(
                child: TextField(
                  controller: detailTextController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(todoDetailStateProvider.notifier).applyChanges(
                        ref.read(todoDetailStateProvider).focusedTodo!.copyWith(
                              detail: detailTextController.text,
                            ),
                      );
                },
                child: const Text('apply'),
              ),
            ],
          ),
          Row(
            children: [
              const Text('status: '),
              DropdownButton(
                items: const [
                  DropdownMenuItem<TodoStatus>(
                    child: Text('OPEN'),
                    value: TodoStatus.open,
                  ),
                  DropdownMenuItem<TodoStatus>(
                    child: Text('IN PROGRESS'),
                    value: TodoStatus.inProgress,
                  ),
                  DropdownMenuItem<TodoStatus>(
                    child: Text('DONE'),
                    value: TodoStatus.done,
                  ),
                ],
                value: ref.watch(todoDetailStateProvider).focusedTodo?.status,
                onChanged: (TodoStatus? value) {
                  if (value != null) {
                    ref.read(todoDetailStateProvider.notifier).applyChanges(ref
                        .read(todoDetailStateProvider)
                        .focusedTodo!
                        .copyWith(status: value));
                  }
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(todoDetailStateProvider.originProvider).deleteTodo();
                  Navigator.of(context).pop();
                },
                child: const Text('delete this todo'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
