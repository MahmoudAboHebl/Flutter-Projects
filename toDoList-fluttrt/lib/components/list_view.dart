import 'package:flutter/material.dart';
import 'package:state_management_examples/components/task.dart';
import 'list_title.dart';

class listView extends StatefulWidget {
  listView(this.tasks) {}
  final List<Task> tasks;
  @override
  _listViewState createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return listTitle(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          callBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
