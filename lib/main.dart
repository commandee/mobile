import 'package:flutter/material.dart';
import 'package:teste/pages/home.dart';
import 'package:teste/pages/welcome.dart';
import 'package:teste/themes/dark_theme.dart';
import 'package:teste/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commandee',
      theme: lightTheme,
      //darkTheme: darkTheme,

      //home: WelcomePage(),
      routes: {
        '/' : (context) => WelcomePage(),
        '/comandas' : (context) => MyHomePage(),
      },
      //HomePage(),
    );
  }
}
