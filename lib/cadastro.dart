// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    obtemDados();
  }

  void salvaDados() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('nome', nomeController.text);
    prefs.setString('email', emailController.text);
    prefs.setString('senha', senhaController.text);
  }

  void obtemDados() async {
    final prefs = await SharedPreferences.getInstance();
    nomeController.text = prefs.getString('nome') ?? '';
    emailController.text = prefs.getString('email') ?? '';
    senhaController.text = prefs.getString('senha') ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 157, 6, 6),
          title: Text("Cadastro"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: nomeController,
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 74, 70, 70),
                ),
                label: Text("Nome"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_month,
                    color: Color.fromARGB(255, 74, 70, 70)),
                label: Text("Informe sua data de nascimento"),
                border: OutlineInputBorder(),
              ),
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime.now());
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.email, color: Color.fromARGB(255, 74, 70, 70)),
                label: Text("Informe seu E-mail"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: senhaController,
              cursorColor: Color.fromARGB(255, 35, 34, 34),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 74, 70, 70),
                ),
                label: Text("Informe sua Senha"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 146, 142, 142)),
              onPressed: () {
                print("O botao foi clicado");
                print(nomeController.text);
                print(emailController.text);
                print(senhaController.text);
                salvaDados();
              },
              child: Text("Salvar"),
            )
          ],
        ));
  }
}
