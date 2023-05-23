// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/homepage_comandas.dart';
import 'package:teste/perfil.dart';

class Home extends StatefulWidget {
  const Home(this.usuario, {super.key});

  //atirbutos
  final String usuario;

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {

   //atributo
  int _indice = 0;

  List<Widget> _telas = [
    ComandasPage(),
    Perfil(),
  ];

  //metodo
  void _itemClicado(int index){
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.aod_rounded),
            label: "Comandas"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: "Perfil"
          ),
        ],
      ),
    );
  }
}
