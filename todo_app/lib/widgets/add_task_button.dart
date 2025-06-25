import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/utilities/theme.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, 'add_task');
      },
      backgroundColor: blackColor,
      elevation: 0,
      splashColor: blueColor,
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        "assets/icons/plus.svg",
        height: MediaQuery.of(context).size.height * 0.03,
      ),
    );
  }
}
