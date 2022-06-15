// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exemple_provider/provider/task_model.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskInList() {
    TaskModel taskModel = TaskModel(
        'Задача ${taskList.length}', 'Описание задачи ${taskList.length}');
    taskList.add(taskModel);
    notifyListeners();
  }
}
