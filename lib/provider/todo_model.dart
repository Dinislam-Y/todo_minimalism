import 'package:exemple_provider/provider/task_model.dart';
import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskInList() {
    TaskModel taskModel = TaskModel(
        'Задача ${taskList.length}', 'Описание задачи ${taskList.length}');
    taskList.add(taskModel);
    notifyListeners();
  }
}
