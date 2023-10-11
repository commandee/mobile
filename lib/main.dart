import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/controller/employee_controller.dart';
import 'package:teste/controller/item_controller.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/view/done_commandas.dart';
import 'package:teste/view/home.dart';
import 'package:teste/view/register/login.dart';
import 'package:teste/view/register/register.dart';
import 'package:teste/view/register/welcome.dart';
import 'themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(ThemeData.light().brightness)),
      ChangeNotifierProvider(create: (_) => CommandaController()),
      ChangeNotifierProvider(create: (_) => EmployeeController()),
      ChangeNotifierProvider(create: (_) => ItemController()),
      ChangeNotifierProvider(create: (_) => LoginController())
    ],
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
        '/register' :(context) => RegisterPage(),
        '/login': (context) => LoginPage(), 
        '/commandas': (context) => MyHomePage(),
        '/done' : (context) => DoneCommandas(),
      },
      //HomePage(),
    );
  }
}
