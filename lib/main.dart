import 'package:flutter/material.dart';
import 'package:todo_app_learning/features/todo/presentation/pages/todo_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue,
          brightness: Brightness.dark,
          accentColor: Colors.green
        ),
      home: TodoHome(),
    );
  }
}
