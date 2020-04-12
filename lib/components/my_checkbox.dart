import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  String title;

  MyCheckBox({this.title});

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
      activeColor: Color(0xFF6200EE),
      title: Text(
        widget.title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
