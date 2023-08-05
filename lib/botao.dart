import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  Botao(this.corBotao, this.tecla, this.pressionarTecla, {super.key});

  final corBotao;
  final String tecla;
  final void Function(String teclaPressionada) pressionarTecla;


  @override
  Widget build(context) {
    return Container(
      height: 60,
      width: 90,
      child: ElevatedButton(
        onPressed: () {
          pressionarTecla(tecla);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: corBotao,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          tecla,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
