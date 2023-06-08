import 'package:flutter/material.dart';

class Comanda extends StatefulWidget {
  const Comanda({super.key});

  @override
  State<Comanda> createState() => _ComandaState();
}

class _ComandaState extends State<Comanda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comanda'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/perfil');
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      
    );
  }
}