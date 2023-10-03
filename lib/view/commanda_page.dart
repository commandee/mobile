import 'package:flutter/material.dart';
import 'package:teste/widgets/add_button.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/widgets/tile_pedido.dart';

class CommandaPage extends StatelessWidget {
  CommandaPage({super.key, required this.commanda});

  final Commanda commanda;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mesa #${commanda.table.toString().padLeft(3, '0')}'),
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
            Navigator.pushNamed(context, '/cardapio');
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
                    commanda.qntOrders.toString() + ' itens',
                    style: TextStyle(),
                  ),
                  Text('R\$ ' + commanda.total.toStringAsFixed(2)),
                ],
              ),
            ),

            //lista dos items da commanda
            Expanded(
              child: ListView.builder(
                itemCount: commanda.qntOrders,
                itemBuilder: (context, index) {
                  return TilePedido(commanda: commanda, index: index);
                },
              ),
            ),
          ],
        ),
    );
  }
}
