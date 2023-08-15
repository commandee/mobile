import 'package:flutter/material.dart';

class ComandaPage extends StatelessWidget {
  ComandaPage({super.key, required this.comanda_number});

  int comanda_number = 42;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comanda #$comanda_number'),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.edit_square),
            onPressed: () {},
          )
        ],
      ),
      body: Text('Olá Mundo'),//Consumer<CartModel>(

      
    );
  }
}
