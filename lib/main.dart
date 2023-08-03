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
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.calculate,
              size: 36,
            ),
            title: Text("Contador"),
            subtitle: Text("Exemplo de Incremento e Decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 36,
            ),
            title: Text("Curtir"),
            subtitle: Text("Curtir e Descurtir"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/curtir');
            },
          )
        ],
      ),
    );
  }
}

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 152, 36, 36),
          title: Text("Curtir"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(x.toString(),
         style: (Size;),),
          IconButton(
            iconSize: 60,
            onPressed: () {
              setState(() {
                x = x + 1;
              });
            },
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
        ])));
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Meu aplicativo<3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 152, 36, 36)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
              },
              child: Text("Incrementar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 179, 73, 73)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
              },
              child: Text("Decrementar"),
            )
          ],
        ),
      ),
    );
  }
}

//pergunta pra prova: existem dois tipos de widget, quais sao? statelesswidget (sem estado) e statefullwidget (com estado)
//estado é a possibilidade de mudança da interface representado por uma variavel
//oq é um widget
