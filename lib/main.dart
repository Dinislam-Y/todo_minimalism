// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:exemple_provider/main_screen.dart';
import 'provider/todo_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => TodoModel(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(),
      ),
    );
  }
}
