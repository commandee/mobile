import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.funcao});

  final Function() funcao;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        funcao();
      },
      splashColor: Theme.of(context).floatingActionButtonTheme.splashColor,
      child: Icon(
        Icons.add,
        color: Theme.of(context).floatingActionButtonTheme.foregroundColor,
      ),
    );
  }
}
