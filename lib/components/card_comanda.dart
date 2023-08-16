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
      padding: const EdgeInsets.only(bottom: 4.0, top: 4.0, left: 16.0, right: 16.0),
      child: SizedBox(
        height: 104,
        child: GestureDetector(
          onTap: () {
            print('Redirecionando para a comanda');
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return ComandaPage();
        }));
          },
          child: Card(
              elevation: 1,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.grey.shade600)
              ),
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(nome, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                      Text('R\$ $price'),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
