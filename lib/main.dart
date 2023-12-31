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

class _Calculadora extends State<Calculadora> {
  String numero = '';

  double primeiroNumero = 0.0;

  String operacao = '';

  String answer = '';

  void calcular(String teclaPressionada) {
    switch (teclaPressionada) {
      case 'C':
        setState(() {
          answer = numero;
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
          primeiroNumero = double.parse(numero);
          numero = '';
          operacao = teclaPressionada;
        });
        break;
      case '/':
        setState(() {
          primeiroNumero = double.parse(numero);
          numero = '';
          operacao = teclaPressionada;
        });
        break;
      case '*':
        setState(() {
          primeiroNumero = double.parse(numero);
          numero = '';
          operacao = teclaPressionada;
        });
        break;
      case '-':
        setState(() {
          primeiroNumero = double.parse(numero);
          numero = '';
          operacao = teclaPressionada;
        });
        break;
      case '+':
        setState(() {
          primeiroNumero = double.parse(numero);
          numero = '';
          operacao = teclaPressionada;
        });
        break;
      case '=':
        if (operacao == '+') {
          setState(() {
            numero = (primeiroNumero + double.parse(numero)).toString();
          });
        } else if (operacao == '-') {
          setState(() {
            numero = (primeiroNumero - double.parse(numero)).toString();
          });
        } else if (operacao == '*') {
          setState(() {
            numero = (primeiroNumero * double.parse(numero)).toString();
          });
        } else if (operacao == '/') {
          setState(() {
            numero = (primeiroNumero / double.parse(numero)).toString();
          });
        } else if (operacao == '%') {
          setState(() {
            numero = (primeiroNumero % double.parse(numero)).toString();
          });
        } else if (operacao == '') {}
        break;
      case '.':
        setState(() {
          if (!numero.contains('.')) {
            numero += '.';
          }
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

          if (!numero.contains('.')) {
            numero = int.parse(numero).toString();
          }
        });
        break;
      case 'ANS':
        setState(() {
          numero = numero;
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
