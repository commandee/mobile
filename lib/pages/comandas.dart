import 'package:flutter/material.dart';
import 'package:teste/components/comanda.dart';

class ComandasPage extends StatefulWidget {
  const ComandasPage({super.key});

  @override
  State<ComandasPage> createState() => _ComandasPageState();
}

class _ComandasPageState extends State<ComandasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView(
          children: [
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 09",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 08",
              descricao: "Informação extra",
            ),
          ]
          ),

          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/comanda');
        },
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      )
    );
  }
}
