import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(title);
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
