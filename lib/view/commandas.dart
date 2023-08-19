import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/widgets/btn_change_theme.dart';
import 'package:teste/widgets/card_commanda.dart';

class CommandasPage extends StatelessWidget {
  CommandasPage({super.key});

  @override
  Widget build(BuildContext context) {

    CommandaController commandaController = Provider.of<CommandaController>(context);
    List<Commanda> commandas = commandaController.getAll();

    return WillPopScope(
      onWillPop: () async {
        return false;
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
                itemCount: commandas.length,
                itemBuilder: (context, index) {
                  return CardCommanda(
                    commanda: commandas[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
