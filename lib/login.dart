// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 157, 6, 6),
          title: Text("Faça Login"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
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
                print(emailController.text);
                print(senhaController.text);
              },
              child: Text("Salvar"),
            )
          ],
        ));
  }
}
