import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginController>(context, listen: false);

    return AlertDialog(
      title: Text("Sair"),
      content: Text("Deseja sair da conta?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Não", style: TextStyle(color:  Theme.of(context).colorScheme.onSurface,)),
        ),
        TextButton(
          onPressed: () {
            loginProvider.logout();
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: Text("Sim", style: TextStyle(color:  Theme.of(context).colorScheme.tertiary,)),
        ),
      ],
    );
  }
}
