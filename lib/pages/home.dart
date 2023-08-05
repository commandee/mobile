// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/add_button.dart';
import 'package:teste/pages/cardapio.dart';
import 'package:teste/pages/comandas.dart';
import 'package:teste/pages/profile.dart';

import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  final List<Widget> _telas = [
    ComandasPage(),
    ProfilePage(),
    CardapioPage(),
  ];
  void _itemClicado(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddButton(),
        backgroundColor: fundoLM,
        body: _telas[_index],
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            fixedColor: accentLM,
            elevation: 0,
            backgroundColor: Colors.transparent,
            currentIndex: _index,
            onTap: _itemClicado,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_outlined), label: 'Comandas'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Perfil'),
              BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Cardápio')
            ],
          ),
        ),
      );
}

