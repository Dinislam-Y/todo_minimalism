// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'provider/todo_model.dart';
import 'widget/showDataTime.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Provider.of<TodoModel>(context, listen: false).addTaskInList();
        },
        child: const Icon(Icons.touch_app_sharp, color: Colors.black45),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Todo Application",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white70,
          ),
        ),
      ),
      body: Column(
        children: const [
          _ShowClock(),
          _ShowAddTask(),
        ],
      ),
    );
  }
}

class _ShowClock extends StatelessWidget {
  const _ShowClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 20),
          Clock(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _ShowAddTask extends StatelessWidget {
  const _ShowAddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myValue = Provider.of<TodoModel>(context);
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 20,
            ),
          ],
        ),
        child: ListView.builder(
            itemCount: myValue.taskList.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                title: Text(
                  myValue.taskList[index].title,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  myValue.taskList[index].detail,
                  style: const TextStyle(
                    color: Colors.black87,
                  ),
                ),
                trailing: const Icon(
                  Icons.check_circle,
                  color: Colors.blueGrey,
                ),
              );
            }),
      ),
    );
  }
}
