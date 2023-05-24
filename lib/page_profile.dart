// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'widgets/widget-foto_perfil.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Nome do Usuário", style: TextStyle(color: Colors.black),), 
        centerTitle: true, 
      ),
      body: Center(
        child: Column( 
          children: [
            //fazer essa porção separada depois
            SizedBox(height: 50,),
            ProfilePic(),
            //fazer essa porção separada depois
             Text('Username', style: TextStyle(fontSize: 20),),
            
          ],
        ),
      )
    );
  }
}
