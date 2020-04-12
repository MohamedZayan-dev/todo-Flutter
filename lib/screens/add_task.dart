import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasks_provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Consumer<TaskProvider>(builder: (context, taskProvider, child) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF6200EE),
                    ),
                  ),
                ),
                TextField(
                  scrollPadding: EdgeInsets.all(20),
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    text = value;
                  },
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    color: Color(0xFF6200EE),
                    onPressed: () {
                      taskProvider.setText(text);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
