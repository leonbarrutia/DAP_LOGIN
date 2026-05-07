import 'package:flutter/material.dart';

class Pan2 extends StatelessWidget {
  const Pan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pantalla 2")),
      body: const Center(
        child: Text(
          "Bienvenido a la app",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
