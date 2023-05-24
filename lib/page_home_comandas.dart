import 'package:flutter/material.dart';
import 'package:teste/widgets/comanda.dart';
import 'package:teste/page_comanda.dart';
import 'package:teste/widgets/widget_card_comanda.dart';

class ComandasPage extends StatefulWidget {
  const ComandasPage({super.key});

  @override
  State<ComandasPage> createState() => _ComandasPageState();
}

class _ComandasPageState extends State<ComandasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comandas"),
      ),
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
    );
  }
}
