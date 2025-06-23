import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/screens/add_task_page.dart';
import 'package:todo_app/screens/edit_task_page.dart';
import 'package:todo_app/screens/home_page.dart';
import 'package:todo_app/screens/settings_page.dart';
import 'package:todo_app/utilities/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: whiteColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: whiteColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: whiteColor,
    ),
  );
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colors
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        //font family
        fontFamily: "Inter",
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w900,
            color: Color(0xff0c120c),
          ),
          displayMedium: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff0c120c),
          ),
          displaySmall: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: Color(0xff0c120c),
          ),
          labelSmall: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff565656),
          ),
          bodyLarge: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff0c120c),
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff565656),
          ),
          bodySmall: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: Color(0xff565656),
          ),
        ),
      ),

      //routes
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'add_task': (context) => const AddTaskPage(),
        'edit_task': (context) => const EditTaskPage(),
        'settings': (context) => const SettingsPage(),
      },
    );
  }
}
