// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  bool curtiu = false;
  int n = 0;
   @override
  void initState() {
    super.initState();
    obtemValor(); // le da memoria hora que abre a pagina
    
  }
  void obtemValor()  async {
    // busca um valor da memoria persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      n= prefs.getInt('curtir') ?? 0;
    });

  }

  void salvaValor (int valor) async {
    //salva um valor na memoria persistente
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('curtir', valor);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 6, 6),
        title: Text("Curtir"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Curtiu $n vezes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            IconButton(
              iconSize: 70,
              icon: curtiu == true
                  ? Icon(Icons.favorite, color: const Color.fromARGB(255, 148, 13, 4))
                  : Icon(Icons.favorite_outline, color: Colors.black),
              onPressed: () {
                setState(() {
                  n = n + 1;
                  curtiu = !curtiu;
                });
                salvaValor(n);// manda persistir o valor de x
              },
            ),
          ],
        ),
      ),
    );
  }
}
