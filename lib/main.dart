import 'package:flutter/material.dart';
import 'package:flutter_projects/data/task_inherited.dart';
import 'package:flutter_projects/screens/form_screen.dart';
import 'package:flutter_projects/screens/initialScreen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefas with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}



