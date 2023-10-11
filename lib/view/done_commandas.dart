import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/widgets/commanda_list/card_commanda.dart';

class DoneCommandas extends StatefulWidget {
  const DoneCommandas({super.key});

  @override
  State<DoneCommandas> createState() => _DoneCommandasState();
}

class _DoneCommandasState extends State<DoneCommandas> {
  @override
  Widget build(BuildContext context) {
    final commandaController =
        Provider.of<CommandaController>(context);
    
    List<Commanda> commandas = commandaController.getAllClosed();

    return Scaffold(
      appBar: AppBar(
        title: Text("Concluídas"),
        centerTitle: true,
      ),
      body: Column(children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: commandas.length,
        itemBuilder: (context, index) {
          return CardCommanda(
            commanda: commandas[index],
          );
        },
        )
      ]),
    );
  }
}