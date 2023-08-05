import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class CardComanda extends StatelessWidget {
  CardComanda({super.key, required this.nome, required this.descricao, required this.price});

  String nome;
  String descricao;
  double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        height: 104,
        child: GestureDetector(
          onTap: () {
            print('Redirecionando para a comanda');
          },
          child: Card(
              elevation: 1,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.grey)
              ),
              color: fundoLM,
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
