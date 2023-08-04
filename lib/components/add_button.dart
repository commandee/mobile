import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('Adicionar comanda');
      },
      backgroundColor: accentLM,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
