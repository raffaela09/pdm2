// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String x = "100";

    return Scaffold(
      appBar: AppBar(
        title: Text("Meu aplicativo<3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x),
            ElevatedButton(
              onPressed: () {
                //ao pressionar o botao
                print("Antes de zerar");
                print(x);
                x = "0";
                print("Depois de zerar");
                print(x);
              },
              child: Text("Zerar"),
            )
          ],
        ),
      ),
    );
  }
}



//pergunta pra prova: existem dois tipos de widget, quais sao? statelesswidget (sem estado) e statefullwidget (com estado)
//oq é um widget