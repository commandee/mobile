import 'package:flutter/material.dart';
import 'package:teste/components/add_button.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/pages/home.dart';

class CommandaPage extends StatelessWidget {
  CommandaPage({super.key, required this.commanda});

  final Commanda commanda;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Realize a navegação para o destino desejado, que pode ser a página inicial.
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, '/commandas');
        // Retorne false para bloquear a ação padrão de voltar.
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(commanda.nome),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          iconTheme: Theme.of(context).appBarTheme.iconTheme,
          actions: [
            IconButton(
              icon: Icon(Icons.edit_square),
              onPressed: () {
                //editar nome da commanda
              },
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: CustomAddButton(
          funcao: () {
            //adicionar item à commanda
          },
        ),
        body: Column(
          children: [
            //contador e total
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    commanda.totalItems.toString() + ' itens',
                    style: TextStyle(),
                  ),
                  Text('R\$ ' + commanda.totalPrice.toString()),
                ],
              ),
            ),

            //lista das commandas
            Expanded(
              child: ListView.builder(
                itemCount: commanda.totalItems,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('Descrição do item $index'),
                      trailing: Text('R\$ 0,00'),
                    ),
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
