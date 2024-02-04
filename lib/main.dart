import 'package:flutter/material.dart';
import 'package:hello_world_app/widgets/counter_screen.dart';

// Toda aplicacion de flutter tiene en su main una ejecucion de un widget inicial, entiendase de widget inicial como nuestra aplicacion como tal. eso se ejecuta con una funcion que se llama runApp(); la funcion  importara el package material.dart
void main() {
  runApp(
      const MyApp()); // runApp pedira un widget, cuando miramos que algo recibe un widget literalmente puede ser cualquier widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
