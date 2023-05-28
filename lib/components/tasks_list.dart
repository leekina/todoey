// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskList>(context).taskList[index].isDone,
          taskTitle: Provider.of<TaskList>(context).taskList[index].taskTitle,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              Provider.of<TaskList>(context, listen: false)
                  .taskList[index]
                  .toggleDone();
            });
          },
        );
      },
      itemCount: Provider.of<TaskList>(context).taskList.length,
    );
  }
}
