// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool curtiu = false;
  int nc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 157, 6, 6),
          title: Text("Cadastro"),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                  icon:
                      Icon(Icons.email, color: Color.fromARGB(255, 74, 70, 70)),
                  hintText: "Informe seu Email"),
            ),
            TextFormField(
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 74, 70, 70),
                ),
                hintText: "Informe a sua Senha",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 146, 142, 142)),
              onPressed: () {},
              child: Text("Salvar"),
            )
          ],
        ));
  }
}
