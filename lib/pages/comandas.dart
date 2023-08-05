import 'package:flutter/material.dart';
import 'package:teste/components/card_comanda.dart';
import 'package:teste/constants.dart';

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
          title: Text('Comandas'),
          centerTitle: true,
          backgroundColor: fundoDM,
          automaticallyImplyLeading: false
        ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: ListView(
                  children: [
                    for (int i = 0; i < 15; i++)
                      CardComanda(
                        nome: "Comanda #157",
                        descricao: "Comanda do dia 15/07/2021",
                        price: 15.00,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
