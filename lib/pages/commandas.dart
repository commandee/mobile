import 'package:flutter/material.dart';
import 'package:teste/components/btn_change_theme.dart';
import 'package:teste/components/card_commanda.dart';

class CommandasPage extends StatefulWidget {
  const CommandasPage({super.key});

  @override
  State<CommandasPage> createState() => _CommandasPageState();
}

class _CommandasPageState extends State<CommandasPage> {
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
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              //SearchBar,

              //lista das commandas
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 1; i < 8; i++)
                      CardCommanda(
                        nome: "Commanda #$i",
                        descricao:
                            "Descrição da commanda $i e seus ingredientes muito lecais",
                        price: 15.00,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
