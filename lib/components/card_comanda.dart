import 'package:flutter/material.dart';
import 'package:teste/pages/comanda_page.dart';


class CardComanda extends StatelessWidget {
  CardComanda({super.key, required this.nome, required this.descricao, required this.price});

  String nome;
  String descricao;
  double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0, top: 4.0),
      child: SizedBox(
        height: 120,
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return ComandaPage();
        }));
          },
          child: Card(
              elevation: 1,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3))
              ),
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Expanded(child: Text(nome, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),)),
                          Text('R\$ $price', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                        ],
                      ),
                    
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(descricao, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5)),),
                          ),
                          Text('Itens: 2', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5)),),
                        ],
                      ),
                    
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
