// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'fotoPerfil.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Column( 
          children: [
            ProfilePic(),
             Text('Texto'),
          ],
        ),
      )
    );
  }
}
