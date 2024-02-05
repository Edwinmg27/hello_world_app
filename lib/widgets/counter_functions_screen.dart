import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Function'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )

            // if (clickCounter == 1)
            //   const Text(
            //     'Click',
            //     style: TextStyle(fontSize: 25),
            //   )
            // else if (clickCounter != 1)
            //   const Text(
            //     'Clicks',
            //     style: TextStyle(fontSize: 25),
            //   )
          ],
        ),
      ), // center widget se encarga de centrar su hijo en las dimensiones disponibles del padre.
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 15,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 15,
          ),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),
        ],
      ),
    ); // El home de MaterialApp sera un Scaffold
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
