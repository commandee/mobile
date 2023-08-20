import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/widgets/card_commanda.dart';

class ListaCommandas extends StatefulWidget {
  const ListaCommandas({super.key});

  @override
  State<ListaCommandas> createState() => _ListaCommandasState();
}

class _ListaCommandasState extends State<ListaCommandas> {
  @override
  Widget build(BuildContext context) {
    CommandaController commandaController =
        Provider.of<CommandaController>(context);
    List<Commanda> commandas = commandaController.getAll();

    return Expanded(
      child: ListView.builder(
        itemCount: commandas.length,
        itemBuilder: (context, index) {
          return CardCommanda(
            commanda: commandas[index],
          );
        },
      ),
    );
  }
}
