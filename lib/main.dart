import 'package:flutter/material.dart';
import 'package:teste/classes/temas.dart';
import 'package:teste/pages/profile.dart';
import 'package:teste/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commandee',
      home: WelcomePage(),//HomePage(), 
    );
  }
}
