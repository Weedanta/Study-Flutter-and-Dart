import 'package:flutter/material.dart';
import 'package:study_flutter/pages/todo_screen.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text(
              "To Do List",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            bottom: const TabBar(
              labelPadding: EdgeInsets.symmetric(vertical: 10),
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              tabs: [
                Text('All'),
                Text('Incomplete'),
                Text('Complete'),
              ],
            ),
          ),
          body:
              TabBarView(
                children:[
                  TodoScreen(),
                  TodoScreen(),
                  TodoScreen()
                ]),
        ));
  }
}
