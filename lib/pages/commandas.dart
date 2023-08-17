import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teste/components/btn_change_theme.dart';
import 'package:teste/components/card_commanda.dart';
import 'package:teste/model/commanda.dart';

class CommandasPage extends StatefulWidget {
  const CommandasPage({super.key});

  @override
  State<CommandasPage> createState() => _CommandasPageState();
}

class _CommandasPageState extends State<CommandasPage> {
  final commandasList = List.generate(
    10,
    (i) => Commanda(
        nome: 'Commanda $i',
        descricao: 'Itens da commanda $i, varios itens mesmo assim mesmo',
        totalPrice: Random().nextInt(150),
        totalItems: Random().nextInt(15) //placeholder
        ),
  );

  //itens da lista  de commandas
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //não deixa que volte a pagina de login a não ser que uma condição seja atendida
      onWillPop: () async {
        return false; // Retorna false para bloquear a ação padrão de voltar.
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Commandas'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          automaticallyImplyLeading: false,
          actions: const [
            ChangeThemeButton(),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            //SearchBar,

            //lista das commandas
            Expanded(
              child: ListView.builder(
                itemCount: commandasList.length,
                itemBuilder: (context, index) {
                  return CardCommanda(
                    nomeCommanda: commandasList[index].nome,
                    descricaoCommanda: commandasList[index].descricao,
                    totalPriceCommanda: commandasList[index].totalPrice,
                    totalItemCommanda: commandasList[index].totalItems,
                  );
                  //totalItems: commandasList[index].totalItems;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
