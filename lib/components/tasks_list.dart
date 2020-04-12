import 'package:flutter/material.dart';
import 'package:todo/components/my_checkbox.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasks_provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, tasksProvider, child) {
      return Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return FlatButton(
              onLongPress: () {
                tasksProvider.deleteTask(tasksProvider.tasks.elementAt(index));
              },
              onPressed: () {},
              child: MyCheckBox(
                title: tasksProvider.getText(index),
              ),
            );
          },
          itemCount: tasksProvider.tasksCount,
        ),
      );
    });
  }
}
