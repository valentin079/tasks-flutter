import 'package:flutter/material.dart';
import 'package:flutter_projects/components/task.dart';

class TaskInherited extends InheritedWidget {
    TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter no frontend e spring no back', 'assets/images/flutter.png', 2),
    Task('Andar de Bike', 'assets/images/pedalar.jpg', 4),
    Task('Meditar', 'assets/images/meditar.jpg', 5),
    Task('Aprender Java', 'assets/images/java.png', 5),
    Task('Git', 'assets/images/git.png', 2),
    Task('Análise de algoritmos', 'assets/images/analise_algoritmo.jpg', 5),
  ];
  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
