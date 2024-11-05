import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(title: newTaskTitle);
    _tasks.add(task);

    // update all the listeners
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
