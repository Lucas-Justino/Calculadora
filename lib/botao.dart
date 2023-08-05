import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  Botao(this.corBotao, {super.key});

  final corBotao;

  @override
  Widget build(context) {
    return Container(
      height: 60,
      width: 90,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: corBotao,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'C',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
