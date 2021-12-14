import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_examples/components/list_view.dart';
import 'task_screen.dart';
import 'package:state_management_examples/components/task.dart';

class tasksScreen extends StatefulWidget {
  @override
  _tasksScreenState createState() => _tasksScreenState();
}

class _tasksScreenState extends State<tasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Buy egges', isDone: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen((String newTask1) {
                    setState(() {
                      tasks.add(Task(name: newTask1, isDone: false));
                    });
                    Navigator.pop(context);
                  }));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, right: 30, left: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${tasks.length} tasks',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: listView(tasks),
            ),
          )
        ],
      ),
    );
  }
}
