import 'package:calculadora/teclado.dart';
import 'package:calculadora/visor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculadora());
}

class Calculadora extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Color.fromARGB(255, 36, 41, 52),
          child: Column(
            children: [
              Visor(),
              Teclado(),
            ],
          ),
        ),
      ),
    );
  }

  Calculadora({super.key});
}
