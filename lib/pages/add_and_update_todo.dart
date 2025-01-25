import 'package:flutter/material.dart';

class AddAndUpdateTodo extends StatefulWidget {
  const AddAndUpdateTodo({super.key});

  @override
  State<AddAndUpdateTodo> createState() => _AddAndUpdateTodoState();
}

class _AddAndUpdateTodoState extends State<AddAndUpdateTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text(
              "Add Todo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  border: InputBorder.none,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Description',
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
    );
  }
}
