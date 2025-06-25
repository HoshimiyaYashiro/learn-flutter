import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/settings_page.dart';
import 'package:todo_app/widgets/add_task_button.dart';
import 'package:todo_app/widgets/spacing.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/widgets/today_and_filter_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tasks = [
    // Sample tasks
    Task(
      id: "1",
      title: "Buy groceries",
      note: "Milk, Bread, Eggs",
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 1)),
      isCompleted: false,
    ),
    Task(
      id: "2",
      title: "Walk the dog",
      note: "Evening walk in the park",
      startTime: DateTime.now().add(Duration(hours: 2)),
      endTime: DateTime.now().add(Duration(hours: 3)),
      isCompleted: false,
    ),
    Task(
      id: "3",
      title: "Read a book",
      note: "Finish reading 'Flutter for Beginners'",
      startTime: DateTime.now().add(Duration(hours: 4)),
      endTime: DateTime.now().add(Duration(hours: 5)),
      isCompleted: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset("assets/icons/logo.svg" ),
        ),
        leadingWidth: 48,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.settings_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: const AddTaskButton(),
      body: SafeArea(
        child: Padding(
          //SafeArea
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            
            children: [
              const TodayAndFilterButton(),
              const Spacing(),
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: tasks.isEmpty
                    ? Center(
                        child: Text(
                          "No tasks available",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )
                    : TaskList(tasks: tasks),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
