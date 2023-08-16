import 'package:flutter/material.dart';
import 'package:teste/components/card_item_cardapio.dart';
import 'package:teste/components/chip_filters.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({super.key});

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope( //não deixa que volte a pagina de login a não ser que uma condição seja atendida
      onWillPop: () async {
        return false; // Retorna false para bloquear a ação padrão de voltar.
      },
      child: 
    Scaffold(
        appBar: AppBar(
          title: const Text('Cardápio'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Filtros(),
              GridView.count(
                    childAspectRatio: 0.7,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    children: [
                      for (int i = 0; i < 10; i++)
                        CardCardapioFood(
                            title: "Suco de Laranja",
                            img: "assets/images/suco.jpg",
                            price: "R\$ 13,99"),
                    ]),
              
            ],
          ),
        )));
  }
}
