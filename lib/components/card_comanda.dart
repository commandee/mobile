import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class CardComanda extends StatelessWidget {
  CardComanda({super.key, required this.nome, required this.descricao});

  String nome;
  String descricao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: GestureDetector(
        onTap: () {
          print('Redirecionando para a comanda');
        },
        child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(16),
            ),
            color: fundoLM,
            child: ListTile(
              title: Text(nome,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: textoLM)),
              subtitle: Text(
                descricao,
                style: const TextStyle(fontSize: 12),
              ),
              trailing: Text("148.99", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            )),
      ),
    );
  }
}
