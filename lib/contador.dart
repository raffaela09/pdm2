// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
              },
              child: Text("Acrescentar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 99, 99, 99)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
              },
              child: Text("Decrementar"),
            ),
          ],
        ),
      ),
    );
  }
}