import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class Commanda extends StatelessWidget {
  Commanda({super.key, required this.nome, required this.descricao});

  String nome;
  String descricao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            title: Text(nome,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: textoLM)),
            subtitle: Text(
              descricao,
              style: const TextStyle(fontSize: 15),
            ),
            trailing: InkWell(
                child: const Icon(Icons.arrow_forward),
                onTap: () {
                  print('Redirecionando para a comanda');
                }),
          )),
    );
  }
}
