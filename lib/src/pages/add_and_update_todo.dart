import 'package:flutter/material.dart';

class AddAndUpdateTodo extends StatefulWidget {
  const AddAndUpdateTodo({super.key});

  @override
  State<AddAndUpdateTodo> createState() => _AddAndUpdateTodoState();
}

class _AddAndUpdateTodoState extends State<AddAndUpdateTodo> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  bool isComplete = false;
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText: 'Description',
                border: InputBorder.none,
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Complete',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: isComplete,
                  activeColor: Colors.greenAccent,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      isComplete = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
