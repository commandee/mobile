import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/view/cardapio.dart';
import 'package:teste/widgets/add_button.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/widgets/tile_pedido.dart';

class CommandaPage extends StatelessWidget {
  CommandaPage({super.key, required this.commanda});

  final Commanda commanda;

  @override
  Widget build(BuildContext context) {
    final commandaControl = Provider.of<CommandaController>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text('Mesa #${commanda.table.toString().padLeft(3, '0')}'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          iconTheme: Theme.of(context).appBarTheme.iconTheme,
         
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: CustomAddButton(
          funcao: commanda.isPaid ? () {
            commandaControl.abrir(commanda);
            Navigator.pop(context);
          } : () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => CardapioPage(commanda: commanda)));
          } ,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: commanda.orders.length,
                  itemBuilder: (context, index) {
                    return TilePedido(order: commanda.orders[index]);
                  },
                ),
              ),
            ),
          ],
        ),
    );
  }
}
