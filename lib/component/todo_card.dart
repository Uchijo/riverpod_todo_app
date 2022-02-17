import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/model/todo_list/todo_list_state.dart';
import 'package:riverpod_todo_app/view_model/top/top_page_state_notifier.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final String statusMessage;
    switch (todo.status) {
      case TodoStatus.open:
        statusMessage = 'open';
        break;
      case TodoStatus.inProgress:
        statusMessage = 'in progress';
        break;
      case TodoStatus.done:
        statusMessage = 'done';
        break;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.centerLeft,
              child: Text(todo.title),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(statusMessage),
          ),
        ],
      ),
    );
  }
}
