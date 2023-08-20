import 'package:flutter/material.dart';
import 'package:teste/widgets/chip_filters.dart';
import 'package:teste/widgets/lista_items.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({super.key});

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //não deixa que volte a pagina de login a não ser que uma condição seja atendida
      onWillPop: () async {
        return false; // Retorna false para bloquear a ação padrão de voltar.
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cardápio'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
            children: [
              Filtros(),
              
              ListaItems(),
            ],
          ),
        ),
      
    );
  }
}
