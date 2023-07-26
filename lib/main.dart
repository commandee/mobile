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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commandee',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomePage(),//HomePage(), 
    );
  }
}
