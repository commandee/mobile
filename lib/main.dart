import 'package:flutter/material.dart';
import 'package:teste/page_profile.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commandee',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/': (context) => const Home('Nome do Usuário'),
        '/perfil': (context) => const Perfil(), 
        '/comanda': (context) => const Home('Comanda'),
      },
      
    );
  }
}
