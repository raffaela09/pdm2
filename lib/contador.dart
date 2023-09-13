// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 0; //variavel de estado
  

  @override
  void initState() {
    super.initState();
    obtemValor(); // le da memoria hora que abre a pagina
    
  }
  void obtemValor()  async {
    // busca um valor da memoria persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      x= prefs.getInt('contador') ?? 0;
    });

  }

  void salvaValor (int valor) async {
    //salva um valor na memoria persistente
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('contador', valor);

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 6, 6),
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 103, 104, 103)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
                salvaValor(x);// manda persistir o valor de x
              },
              child: Text("Incrementar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 99, 99, 99)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
                salvaValor(x);// manda persistir o valor de x
              },
              child: Text("Decrementar"),
            ),
          ],
        ),
      ),
    );
  }
}
