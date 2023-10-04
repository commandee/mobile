import 'package:flutter/material.dart';
import 'package:teste/widgets/btn_change_theme.dart';
import 'package:teste/widgets/commanda_list/lista_commandas.dart';

class CommandasPage extends StatefulWidget {
  CommandasPage({super.key});

  @override
  State<CommandasPage> createState() => _CommandasPageState();
}

class _CommandasPageState extends State<CommandasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            //CustomSearchBar(),
            //lista das commandas
            
            ListaCommandas(),
          ],
        ),
 
    );
  }
}
