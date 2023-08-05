import 'package:calculadora/botao.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  Teclado(this.pressionarTecla,{super.key});
  final void Function(String teclaPressionada) pressionarTecla;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botao(Color.fromARGB(255, 57, 61, 68), 'C', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), 'DEL', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '%', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '/', pressionarTecla),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botao(Color.fromARGB(255, 57, 61, 68), '7', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '8', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '9', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '*', pressionarTecla),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botao(Color.fromARGB(255, 57, 61, 68), '4', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '5', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '6', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '-', pressionarTecla),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botao(Color.fromARGB(255, 57, 61, 68), '1', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '2', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '3', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '+', pressionarTecla),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botao(Color.fromARGB(255, 57, 61, 68), '0', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), '.', pressionarTecla),
            Botao(Color.fromARGB(255, 57, 61, 68), 'ANS', pressionarTecla),
            Botao(Color.fromARGB(255, 16, 173, 180), '=', pressionarTecla),
          ],
        ),
      ],
    );
  }
}
//
// class LinhaComBotoes extends StatelessWidget {
//   LinhaComBotoes({super.key});
//
//   @override
//   Widget build(context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Botao(Color.fromARGB(255, 57, 61, 68)),
//         Botao(Color.fromARGB(255, 57, 61, 68)),
//         Botao(Color.fromARGB(255, 57, 61, 68)),
//         Botao(Color.fromARGB(255, 16, 173, 180)),
//       ],
//     );
//   }
// }
