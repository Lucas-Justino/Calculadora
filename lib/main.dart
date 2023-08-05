import 'package:calculadora/teclado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculadora());
}

class Calculadora extends StatefulWidget {
  Calculadora({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Calculadora();
  }
}

class _Calculadora extends State<Calculadora>{

  String numero = '';

  void calcular(String teclaPressionada){
    switch(teclaPressionada){
      case 'C':
        setState(() {
          numero = '';
        });
        break;
      case 'DEL':
        setState(() {
          if (numero.isNotEmpty) {
            numero = numero.substring(0, numero.length - 1);
          }
        });
        break;
      case '%':
        setState(() {
          numero += '%';
        });
        break;
      case '/':
        setState(() {
          numero += '/';
        });
        break;
      case '*':
        setState(() {
          numero += '*';
        });
        break;
      case '-':
        setState(() {
          numero += '-';
        });
        break;
      case '+':
        setState(() {
          numero += '+';
        });
        break;
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '0':
        setState(() {
          numero += teclaPressionada;
        });
        break;
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Color.fromARGB(255, 36, 41, 52),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 350,
                width: 500,
                child: Container(
                  color: Colors.deepPurple,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      numero,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Teclado(calcular),
            ],
          ),
        ),
      ),
    );
  }

}
