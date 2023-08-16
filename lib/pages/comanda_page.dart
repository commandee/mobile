import 'package:flutter/material.dart';
import 'package:teste/pages/home.dart';

class ComandaPage extends StatelessWidget {
  ComandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Realize a navegação para o destino desejado, que pode ser a página inicial.
        Navigator.pushReplacementNamed(context, '/comandas'); // Substitua '/home' pela rota desejada
        
        // Retorne false para bloquear a ação padrão de voltar.
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Comanda #1'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          iconTheme: Theme.of(context).appBarTheme.iconTheme,
          leading: BackButton(
            color: Theme.of(context).appBarTheme.iconTheme!.color,
            onPressed: () {
              
              //voltar a MyHomePage()
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.edit_square),
              onPressed: () {},
            )
          ],
        ),
        body: Text('Olá Mundo'), //Consumer<CartModel>(
      ),
    );
  }
}
