// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/widgets/add_button.dart';
import 'package:teste/view/cardapio.dart';
import 'package:teste/view/commandas.dart';
import 'package:teste/view/profile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CommandaController commandaController = CommandaController();

  int _index = 0;

  final List<Widget> _telas = [
    CommandasPage(),
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _telas[_index],
      extendBody: true,
      bottomNavigationBar: _navBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomAddButton(
        funcao: () {        
        },
      ));

  //navigation bar
  BottomAppBar _navBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: BottomNavigationBar(
        selectedIconTheme:
            Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,
        elevation: 0,
        backgroundColor: Colors.transparent,
        currentIndex: _index,
        onTap: _itemClicado,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_outlined), label: 'Commandas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: 'Cardápio')
        ],
      ),
    );
  }
}
