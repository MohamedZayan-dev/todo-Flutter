import 'package:flutter/material.dart';
import 'package:todo/models/tasksData.dart';
import 'dart:collection';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  int get tasksCount => _tasks.length;

  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);

  void setText(String newText) {
    _tasks.add(Task(title: newText));
    notifyListeners();
  }

  String getText(int index) => _tasks[index].title;

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
