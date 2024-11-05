import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => TasksListState();
}

class TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          final task = taskData.getTasks[index];
          return Tasktile(
            title: task.title,
            checkboxState: task.isDone,
            onPress: () {
              taskData.updateTask(task);
            },
            onLongPress: () {
              taskData.deleteTask(task);
            },
          );
        },
      );
    });
  }
}
