import 'package:flutter/material.dart';
import 'package:practica1/routes.dart';
import 'package:practica1/screens/login_screen.dart';
import 'package:practica1/styles/styles_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const LoginScreen(),
        routes: getRoutes(),
        theme: StylesApp.dkTheme(context),
    );
  }
}
