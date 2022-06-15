import 'package:exemple_provider/provider/task_model.dart';
import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskInList() {
    TaskModel taskModel = TaskModel('', '');
    taskList.add(taskModel);
  }

  @override
  void notifyListeners() {}
}
