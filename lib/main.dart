import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo_app/view/add_todo/add_todo_page.dart';
import 'package:riverpod_todo_app/view/todo_detail/todo_detail_page.dart';
import 'package:riverpod_todo_app/view/top/top_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const TopPage(),
        '/addTodo': (context) => const AddTodoPage(),
        '/todoDetail': (context) => const TodoDetailPage(),
      },
    );
  }
}
