import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/pages/home.dart';
import 'package:teste/pages/welcome.dart';

import 'themes/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(ThemeData.light().brightness ), //MediaQuery.of(context).platformBrightness (morre o app)
    child: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commandee',
      theme: provider.temaAtual,

      routes: {
        '/': (context) => WelcomePage(),
        '/commandas': (context) => MyHomePage(),
      },
      //HomePage(),
    );
  }
}
