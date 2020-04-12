import 'package:flutter/material.dart';
import 'package:todo/screens/tasks.dart';
import 'package:provider/provider.dart';
import 'models/tasks_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
