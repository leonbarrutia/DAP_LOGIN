import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PanInicio extends StatefulWidget {
  const PanInicio({super.key});

  @override
  State<PanInicio> createState() => _PanInicioState();
}

class _PanInicioState extends State<PanInicio> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String mensaje = "";

  void validarLogin() {
    String usuario = usuarioController.text;
    String password = passwordController.text;

    setState(() {
      if (usuario.isEmpty || password.isEmpty) {
        mensaje = "Los campos están vacíos";
      } else if (usuario != "admin" || password != "1234") {
        mensaje = "Usuario o contraseña incorrectos";
      } else {
        mensaje = "Login correcto";
        
        // Navega después de un pequeño delay (para que veas el mensaje)
        Future.delayed(const Duration(seconds: 1), () {
          context.go('/pan2');
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usuarioController,
              decoration: const InputDecoration(
                labelText: "Usuario",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: validarLogin,
              child: const Text("Ingresar"),
            ),
            const SizedBox(height: 20),
            Text(
              mensaje,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
