import 'package:flutter/material.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/pages/commanda_page.dart';

class CardCommanda extends StatelessWidget {
  CardCommanda(
      {super.key,
      required this.nomeCommanda,
      required this.descricaoCommanda,
      this.totalPriceCommanda = 0,
      this.totalItemCommanda = 0});

  String nomeCommanda;
  String descricaoCommanda;
  int totalPriceCommanda;
  int totalItemCommanda;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return CommandaPage(
                commanda: Commanda(
                    nome: nomeCommanda,
                    descricao: descricaoCommanda,
                    totalPrice: totalPriceCommanda,
                    totalItems: totalItemCommanda),
              );
            }));
          },
          child: Card(
              elevation: 1,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                      color: Theme.of(context)
                          .colorScheme.outline
                          
                          )),
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
                          nomeCommanda,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                        SizedBox(width: 40),
                        Text(
                          'R\$ $totalPriceCommanda',
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
                            descricaoCommanda,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface.withOpacity(0.5)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Itens: $totalItemCommanda',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _botaoAcao('Excluir', () {
                          openDialog(context, 'excluir');
                        }, context, Theme.of(context).colorScheme.tertiary),
                        _botaoAcao('Concluir', () {
                          openDialog(context, 'concluir');
                        }, context, Theme.of(context).colorScheme.primary),
                      ],
                    )
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

  Future openDialog(BuildContext context, String action) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text('Gostaria mesmo de $action essa commanda?'),
          actions: [
            TextButton(
              child: Text(
                "Cancelar",
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Confirmar",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground)),
              onPressed: () {
                if (action == 'excluir') {
                  print('Excluindo comanda');
                  Navigator.of(context).pop();
                } else if (action == 'concluir') {
                  print('Concluindo comanda');
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
      );
}
