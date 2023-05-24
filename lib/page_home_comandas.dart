import 'package:flutter/material.dart';
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
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            CardComanda(),
            
          ]
          ),
      ),
    );
  }
}
