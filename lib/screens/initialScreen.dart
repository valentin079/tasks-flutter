import 'package:flutter/material.dart';
import 'package:flutter_projects/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter no frontend e spring no back',
                'assets/images/flutter.png',
                2),
            Task(
                'Andar de Bike',
                'assets/images/pedalar.jpg',
                4),
            Task(
                'Meditar',
                'assets/images/meditar.jpg',
                5),
            Task(
                'Aprender Java',
                'assets/images/java.png',
                5),
            Task('Git',
                'assets/images/git.png',
                2),
            Task('Análise de algoritmos',
                'assets/images/analise_algoritmo.jpg',
                5),
            SizedBox(height: 80,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });

        },
        child: const Icon(Icons.remove_red_eye),),
    );
  }
}