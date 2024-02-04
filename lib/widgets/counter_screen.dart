import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Clicks', style: TextStyle(fontSize: 25))
          ],
        ),
      ), // center widget se encarga de centrar su hijo en las dimensiones disponibles del padre.
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.plus_one)),
    ); // El home de MaterialApp sera un Scaffold
  }
}
