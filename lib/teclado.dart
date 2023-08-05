import 'package:calculadora/botao.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  Teclado({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        LinhaComBotoes(),
        SizedBox(
          height: 16,
        ),
        LinhaComBotoes(),
        SizedBox(
          height: 16,
        ),
        LinhaComBotoes(),
        SizedBox(
          height: 16,
        ),
        LinhaComBotoes(),
        SizedBox(
          height: 16,
        ),
        LinhaComBotoes(),
      ],
    );
  }
}

class LinhaComBotoes extends StatelessWidget {

  LinhaComBotoes({super.key});



  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Botao(Color.fromARGB(255, 57, 61, 68)),
          Botao(Color.fromARGB(255, 57, 61, 68)),
          Botao(Color.fromARGB(255, 57, 61, 68)),
          Botao(Color.fromARGB(255, 16,173,180)),
        ],
      ),
    );
  }
}
