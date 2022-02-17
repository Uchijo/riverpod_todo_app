import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/view_model/add_todo/add_todo_state_notifier.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: const AddTodoBody(),
    );
  }
}

class AddTodoBody extends HookConsumerWidget {
  const AddTodoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoTitleTextController = useTextEditingController();
    final todoDetailTextController = useTextEditingController();
    return Column(
      children: [
        Row(
          children: [
            const Text('title: '),
            Expanded(
              child: TextField(
                controller: todoTitleTextController,
              ),
            )
          ],
        ),
        Row(
          children: [
            const Text('detail: '),
            Expanded(
              child: TextField(
                controller: todoDetailTextController,
              ),
            )
          ],
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(addTodoStateProvider.notifier).addTodo(
                  title: todoTitleTextController.text,
                  detail: todoDetailTextController.text,
                );
            Navigator.of(context).pop();
          },
          child: const Text('ADD'),
        )
      ],
    );
  }
}
