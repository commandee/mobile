import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/view/commanda_page.dart';

enum _Action { excluir, concluir }

class CardCommanda extends StatelessWidget {
  CardCommanda({super.key, required this.commanda});

  final Commanda commanda;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, 
                MaterialPageRoute(builder: (context) {
              return CommandaPage(
                commanda: commanda
              );
            }));
          },
          child: Card(
              elevation: 1,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.outline)),
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text(
                          'Mesa #${commanda.table.toString().padLeft(3, '0')}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                        SizedBox(width: 40),
                        Text(
                          'R\$' + commanda.total.toStringAsFixed(2),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Cliente: ${commanda.customer}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.5)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 48,
                        ),
                        Text(
                          'Itens: ' + commanda.qntOrders.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.5)),
                        ),
                      ],
                    ),
                    !commanda.isPaid ? SizedBox(height: 16) : Container(),
                    !commanda.isPaid ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _botaoAcao('Excluir', () {
                          openDialog(context, _Action.excluir);
                        }, context, Theme.of(context).colorScheme.tertiary),
                        _botaoAcao('Concluir', () {
                          openDialog(context, _Action.concluir);
                        }, context, Theme.of(context).colorScheme.primary),
                      ],
                    ) : Container()
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget _botaoAcao(
      String texto, Function() action, BuildContext context, Color cor) {
    return Container(
      decoration: BoxDecoration(
          color: cor.withOpacity(0.5),
          border: Border.all(color: cor, width: 1),
          //color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
      child: GestureDetector(
        child: Text(
          texto,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        onTap: action,
      ),
    );
  }

  Future openDialog(BuildContext context, _Action action) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
              'Gostaria de ${action == _Action.excluir ? 'excluir' : 'concluir'} a commanda?'),
          actions: [
            TextButton(
              child: Text(
                "Cancelar",
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              onPressed: () {
                print('object');
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Confirmar",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground)),
              onPressed: () {
                if (action == _Action.excluir) {
                  print('algo 1');

                  final commandaController =
                      Provider.of<CommandaController>(context, listen: false);
                  commandaController.delete(commanda);

                  Navigator.of(context).pop();
                } else if (action == _Action.concluir) {
                  print('algo 2');

                  final commandaController =
                      Provider.of<CommandaController>(context, listen: false);
                  commandaController.concluir(commanda);
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
      );
}
