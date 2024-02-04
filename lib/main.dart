import 'package:flutter/material.dart';

// Toda aplicacion de flutter tiene en su main una ejecucion de un widget inicial, entiendase de widget inicial como nuestra aplicacion como tal. eso se ejecuta con una funcion que se llama runApp(); la funcion  importara el package material.dart
void main() {
  runApp(MyApp()); // runApp pedira un widget, cuando miramos que algo recibe un widget literalmente puede ser cualquier widget
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: Text('Hola mundo')), // center widget se encarga de centrar su hijo en las dimensiones disponibles del padre.
    );
  }

}
