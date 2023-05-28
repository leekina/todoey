// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Task extends ChangeNotifier {
  String taskTitle;
  bool isDone;

  Task({
    required this.taskTitle,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }
}

class TaskList extends ChangeNotifier {
  List<Task> taskList = [];

  TaskList() {
    taskList = [
      Task(taskTitle: '11111'),
      Task(taskTitle: '22222'),
      Task(taskTitle: '33333'),
    ];
  }

  void addTask(String taskTitle) {
    taskList.add(Task(taskTitle: taskTitle));
    notifyListeners();
  }
}
