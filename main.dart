import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/pan_inicio.dart';
import 'screens/pan_2.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PanInicio(),
      ),
      GoRoute(
        path: '/pan2',
        builder: (context, state) => const Pan2(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
