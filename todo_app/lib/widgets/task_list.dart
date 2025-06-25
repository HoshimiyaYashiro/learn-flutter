import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/utilities/theme.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void _toggleCheck(int index) {
    setState(() {
      widget.tasks[index].isCompleted = !widget.tasks[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    var format = DateFormat.Hm();
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        final task = widget.tasks[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: verticalPadding(context), horizontal: horizontalPadding(context)),
          child: ListTile(
            leading: Checkbox(
              value: task.isCompleted,
              onChanged: (_) => _toggleCheck(index),
            ),
            title: Text(task.title ?? ''),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(task.note ?? ''),
                Text(
                  '${format.format(task.startTime!)} - ${format.format(task.endTime!)}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}