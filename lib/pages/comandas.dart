import 'package:flutter/material.dart';
import 'package:teste/components/btn_change_theme.dart';
import 'package:teste/components/card_comanda.dart';

class ComandasPage extends StatefulWidget {
  const ComandasPage({super.key});

  @override
  State<ComandasPage> createState() => _ComandasPageState();
}

class _ComandasPageState extends State<ComandasPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope( //não deixa que volte a pagina de login a não ser que uma condição seja atendida
      onWillPop: () async {
        return false; // Retorna false para bloquear a ação padrão de voltar.
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Comandas'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          automaticallyImplyLeading: false,
          actions: const [
           ChangeThemeButton(),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              //SearchBar,
    
              //lista das comandas
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 1; i < 8; i++)
                      CardComanda(
                        nome: "Comanda #$i",
                        descricao: "Comanda do dia 15/07/2021",
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
