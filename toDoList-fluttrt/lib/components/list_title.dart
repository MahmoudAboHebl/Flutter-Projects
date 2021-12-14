import 'package:flutter/material.dart';

class listTitle extends StatelessWidget {
  listTitle({this.isChecked, this.taskTitle, this.callBack}) {}
  bool isChecked;
  String taskTitle;
  Function callBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: callBack,
      ),
    );
  }
}
